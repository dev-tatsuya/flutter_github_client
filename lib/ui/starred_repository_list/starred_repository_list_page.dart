import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_github_client/core/domain_model.dart';
import 'package:flutter_github_client/foundation/graphql/data_model.dart';
import 'package:flutter_github_client/foundation/rest/rest_client.dart';
import 'package:flutter_github_client/ui/component/repository_list_container.dart';
import 'package:flutter_github_client/ui/starred_repository_list/starred_repository_list_page.graphql.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'starred_repository_list_page.g.dart';

@Riverpod(dependencies: [restClient])
Future<List<Repository>> starredRepositoryList(
  StarredRepositoryListRef ref,
) async {
  final client = ref.watch(restClientProvider);
  final listData = await client.getStarredRepositoryList('asc');
  return listData
      .map((e) => e.toDomain().copyWith(viewerHasStarred: true))
      .toList();
}

@RoutePage()
class StarredRepositoryListPage extends HookConsumerWidget {
  const StarredRepositoryListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RepositoryListContainer(
      useGraphQLQuery: useQuery$StarredRepositoryList,
      graphQLQueryConverter: (data) =>
          data.viewer.starredRepositories.edges
              ?.map((e) => e?.node.toDomain())
              .nonNulls
              .toList() ??
          [],
      restRepositoryListProvider: starredRepositoryListProvider,
    );
  }
}
