import 'package:flutter_github_client/domain/model/repository.dart';
import 'package:flutter_github_client/provider/repository/starred_repository_list.dart';
import 'package:flutter_github_client/provider/service/api/rest_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repository_list.g.dart';

@Riverpod(keepAlive: true, dependencies: [restClient, starredIdList])
Future<List<Repository>> repositoryList(RepositoryListRef ref) async {
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
