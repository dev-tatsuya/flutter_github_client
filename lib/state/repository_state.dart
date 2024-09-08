import 'package:flutter_github_client/core/domain_model.dart';
import 'package:flutter_github_client/foundation/rest/rest_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repository_state.g.dart';

@Riverpod(
  keepAlive: false,
  dependencies: [restClient, starredRepositoryList],
)
Future<List<Repository>> repositoryList(RepositoryListRef ref) async {
  final client = ref.watch(restClientProvider);
  final listData = await client.getRepositoryList('dart', 10);
  final repositoryList = listData.items.map((e) => e.toDomain()).toList();

  final starredRepositoryList =
      await ref.watch(starredRepositoryListProvider.future);
  final starredIdList = starredRepositoryList.map((e) => e.id).toList();

  return repositoryList.map((e) {
    return starredIdList.contains(e.id)
        ? e.copyWith(viewerHasStarred: true)
        : e;
  }).toList();
}

@Riverpod(
  keepAlive: false,
  dependencies: [repositoryList],
)
Future<Repository> repositoryDetail(
  RepositoryDetailRef ref, {
  required String owner,
  required String repositoryName,
}) async {
  final repositoryList = await ref.watch(repositoryListProvider.future);
  return repositoryList
      .firstWhere((e) => e.owner == owner && e.name == repositoryName);
}

@Riverpod(
  keepAlive: false,
  dependencies: [restClient],
)
Future<List<Repository>> starredRepositoryList(
  StarredRepositoryListRef ref,
) async {
  final client = ref.watch(restClientProvider);
  final listData = await client.getStarredRepositoryList('asc');
  return listData
      .map((e) => e.toDomain().copyWith(viewerHasStarred: true))
      .toList();
}
