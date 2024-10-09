import 'package:flutter_github_client/feature/repository/repository.dart';
import 'package:flutter_github_client/foundation/rest_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'starred_repository_list.g.dart';

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
