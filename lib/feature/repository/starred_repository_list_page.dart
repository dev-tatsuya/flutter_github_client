import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_github_client/feature/repository/component/repository_list_container.dart';
import 'package:flutter_github_client/feature/repository/repository.dart';
import 'package:flutter_github_client/feature/repository/starred_repository_list_page.graphql.dart';
import 'package:flutter_github_client/foundation/graphql_data_model.dart';
import 'package:flutter_github_client/foundation/rest_client.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'starred_repository_list_page.g.dart';

@Riverpod(keepAlive: true, dependencies: [restClient])
Future<List<Repository>> starredRepositoryList(
  StarredRepositoryListRef ref,
) async {
  final client = ref.watch(restClientProvider);
  final listData = await client.getStarredRepositoryList('asc');
  return listData
      .map((e) => e.toEntity().copyWith(viewerHasStarred: true))
      .toList();
}

@Riverpod(keepAlive: true, dependencies: [starredRepositoryList])
Future<List<String>> starredIdList(StarredIdListRef ref) async {
  final starredList = await ref.watch(starredRepositoryListProvider.future);
  return starredList.map((e) => e.id).toList();
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
              ?.map((e) => e?.node.toEntity())
              .nonNulls
              .toList() ??
          [],
      restRepositoryListProvider: starredRepositoryListProvider,
    );
  }
}
