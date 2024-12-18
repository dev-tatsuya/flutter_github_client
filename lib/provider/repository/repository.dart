import 'package:flutter_github_client/domain/model/repository.dart';
import 'package:flutter_github_client/provider/service/api/rest_client.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repository.g.dart';

@Riverpod(keepAlive: true, dependencies: [restClient])
Future<List<Repository>> starredRepositoryList(Ref ref) async {
  final client = ref.watch(restClientProvider);
  final listData = await client.getStarredRepositoryList('asc');
  return listData
      .map((e) => e.toDomain().copyWith(viewerHasStarred: true))
      .toList();
}

@Riverpod(keepAlive: true, dependencies: [starredRepositoryList])
Future<List<String>> starredIdList(Ref ref) async {
  final starredList = await ref.watch(starredRepositoryListProvider.future);
  return starredList.map((e) => e.id).toList();
}

@Riverpod(keepAlive: true, dependencies: [restClient, starredIdList])
Future<List<Repository>> repositoryList(Ref ref) async {
  final client = ref.watch(restClientProvider);
  final listData = await client.getRepositoryList('dart', 10);
  final repositoryList = listData.items.map((e) => e.toDomain()).toList();

  final starredIdList = await ref.watch(starredIdListProvider.future);

  return repositoryList.map((e) {
    return starredIdList.contains(e.id)
        ? e.copyWith(viewerHasStarred: true)
        : e;
  }).toList();
}

@Riverpod(keepAlive: true, dependencies: [restClient, starredIdList])
Future<Repository> repositoryDetail(
  Ref ref, {
  required String owner,
  required String repositoryName,
}) async {
  final data =
      await ref.watch(restClientProvider).getRepository(owner, repositoryName);
  final repository = data.toDomain();

  final starredIdList = await ref.watch(starredIdListProvider.future);

  return repository.copyWith(
    viewerHasStarred: starredIdList.contains(repository.id),
  );
}
