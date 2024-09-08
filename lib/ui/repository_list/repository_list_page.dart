import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_github_client/foundation/graphql/data_model.dart';
import 'package:flutter_github_client/foundation/graphql/data_model.graphql.dart';
import 'package:flutter_github_client/state/api_protocol_state.dart';
import 'package:flutter_github_client/state/repository_state.dart';
import 'package:flutter_github_client/ui/component/graphql_container.dart';
import 'package:flutter_github_client/ui/component/list_app_bar.dart';
import 'package:flutter_github_client/ui/component/repository_list_item.dart';
import 'package:flutter_github_client/ui/component/rest_container.dart';
import 'package:flutter_github_client/ui/repository_list/repository_list_page.graphql.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class RepositoryListPage extends HookConsumerWidget {
  const RepositoryListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final apiProtocol = ref.watch(apiProtocolStateProvider);

    final graphQLContainer = HookBuilder(
      builder: (context) {
        final query = useQuery$RepositoryList();

        return GraphQLContainer(
          result: query.result,
          builder: (data) {
            final edges = data.search.edges;
            if (edges == null || edges.isEmpty) return null;
            return ListView.separated(
              itemCount: edges.length,
              separatorBuilder: (_, __) => const Divider(),
              itemBuilder: (context, index) {
                if (edges[index]?.node
                    case final Fragment$RepositoryData data) {
                  return RepositoryListItem(
                    key: ValueKey(data.id),
                    repository: data.toDomain(),
                  );
                }
                return null;
              },
            );
          },
        );
      },
    );

    final restContainer = Consumer(
      builder: (context, ref, child) {
        final asyncValue = ref.watch(repositoryListProvider);

        return RestContainer(
          asyncValue: asyncValue,
          builder: (repositoryList) {
            if (repositoryList.isEmpty) return null;
            return ListView.separated(
              itemCount: repositoryList.length,
              separatorBuilder: (_, __) => const Divider(),
              itemBuilder: (_, index) {
                final repository = repositoryList[index];
                return RepositoryListItem(
                  key: ValueKey(repository.id),
                  repository: repositoryList[index],
                );
              },
            );
          },
        );
      },
    );

    return Scaffold(
      appBar: const ListAppBar(),
      body: switch (apiProtocol) {
        ApiProtocolType.graphql => graphQLContainer,
        ApiProtocolType.rest => restContainer,
      },
    );
  }
}
