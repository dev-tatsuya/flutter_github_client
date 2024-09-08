import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_github_client/core/domain_model.dart';
import 'package:flutter_github_client/foundation/graphql/data_model.dart';
import 'package:flutter_github_client/ui/component/graphql_container.dart';
import 'package:flutter_github_client/ui/component/repository_list_item.dart';
import 'package:flutter_github_client/ui/component/rest_container.dart';
import 'package:flutter_github_client/ui/component/star_button.dart';
import 'package:flutter_github_client/ui/repository_detail/repository_detail_page.graphql.dart';
import 'package:flutter_github_client/ui/repository_list/repository_list_page.dart';
import 'package:flutter_github_client/ui/state/api_protocol_state.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repository_detail_page.g.dart';

@Riverpod(dependencies: [repositoryList])
Future<Repository> repositoryDetail(
  RepositoryDetailRef ref, {
  required String owner,
  required String repositoryName,
}) async {
  final repositoryList = await ref.watch(repositoryListProvider.future);
  return repositoryList
      .firstWhere((e) => e.owner == owner && e.name == repositoryName);
}

@RoutePage()
class RepositoryDetailPage extends HookConsumerWidget {
  const RepositoryDetailPage({
    @pathParam required this.owner,
    @pathParam required this.name,
    super.key,
  });

  final String owner;
  final String name;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final apiProtocol = ref.watch(apiProtocolStateProvider);

    Widget? builder(Repository? repository) {
      if (repository == null) return null;

      return Column(
        children: [
          RepositoryListItem(repository: repository, isUsedOnDetail: true),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            width: double.infinity,
            child: StarButton(repository: repository),
          ),
        ],
      );
    }

    final graphQLContainer = HookBuilder(
      builder: (context) {
        final query = useQuery$RepositoryDetail(
          Options$Query$RepositoryDetail(
            variables:
                Variables$Query$RepositoryDetail(owner: owner, name: name),
          ),
        );

        return GraphQLContainer<Query$RepositoryDetail, Repository?>(
          result: query.result,
          converter: (data) => data.repository?.toDomain(),
          builder: builder,
        );
      },
    );

    final restContainer = Consumer(
      builder: (context, ref, child) {
        final asyncValue = ref.watch(
          repositoryDetailProvider(owner: owner, repositoryName: name),
        );

        return RestContainer(
          asyncValue: asyncValue,
          builder: builder,
        );
      },
    );

    return Scaffold(
      appBar: AppBar(title: Text(name)),
      body: switch (apiProtocol) {
        ApiProtocolType.graphql => graphQLContainer,
        ApiProtocolType.rest => restContainer,
      },
    );
  }
}
