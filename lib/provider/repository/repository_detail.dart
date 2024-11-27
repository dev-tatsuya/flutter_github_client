import 'package:flutter_github_client/domain/model/repository.dart';
import 'package:flutter_github_client/provider/repository/starred_repository_list.dart';
import 'package:flutter_github_client/provider/service/api/rest_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repository_detail.g.dart';

@Riverpod(keepAlive: true, dependencies: [restClient, starredIdList])
Future<Repository> repositoryDetail(
    RepositoryDetailRef ref, {
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
