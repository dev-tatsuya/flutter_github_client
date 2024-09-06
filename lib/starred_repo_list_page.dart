import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_github_client/api_protocol_state.dart';
import 'package:flutter_github_client/graphql/data_model.dart';
import 'package:flutter_github_client/graphql/graphql_container.dart';
import 'package:flutter_github_client/graphql/repo_list_query.graphql.dart';
import 'package:flutter_github_client/graphql/starred_repo_list_query.graphql.dart';
import 'package:flutter_github_client/repo_list_page.dart';
import 'package:flutter_github_client/rest/repo_state.dart';
import 'package:flutter_github_client/rest/rest_container.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class StarredRepoListPage extends HookConsumerWidget {
  const StarredRepoListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final apiProtocol = ref.watch(apiProtocolStateProvider);

    final graphQLContainer = HookBuilder(
      builder: (context) {
        final query = useQuery$StarredRepoList();

        return GraphQLContainer(
          result: query.result,
          builder: (data) {
            final edges = data.viewer.starredRepositories.edges;
            if (edges == null || edges.isEmpty) return null;
            return ListView.separated(
              itemCount: edges.length,
              separatorBuilder: (_, __) => const Divider(),
              itemBuilder: (context, index) {
                if (edges[index]?.node
                    case final Fragment$RepositoryItem item) {
                  return RepoListItem(item: item.toDomain());
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
        final asyncValue = ref.watch(starredRepoListProvider);

        return RestContainer(
          asyncValue: asyncValue,
          builder: (data) {
            if (data.isEmpty) return null;
            return ListView.separated(
              itemCount: data.length,
              separatorBuilder: (_, __) => const Divider(),
              itemBuilder: (context, index) => RepoListItem(item: data[index]),
            );
          },
        );
      },
    );

    return Scaffold(
      appBar: const MyAppBar(),
      body: switch (apiProtocol) {
        ApiProtocolType.graphql => graphQLContainer,
        ApiProtocolType.rest => restContainer,
      },
    );
  }
}
