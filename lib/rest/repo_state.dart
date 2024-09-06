import 'package:flutter_github_client/model.dart';
import 'package:flutter_github_client/rest/rest.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repo_state.g.dart';

@Riverpod(
  keepAlive: true,
  dependencies: [rest],
)
class RepoList extends _$RepoList {
  @override
  Future<List<Repository>> build() async {
    final client = ref.watch(restProvider);
    final repoListData = await client.getRepoList('dart');
    // for (final repo in repoListData.items) {
    //   client.viewerHasStarred(repo., repo);
    // }
    return repoListData.items.map(Repository.fromRest).toList();
  }
}

@Riverpod(
  keepAlive: true,
  dependencies: [rest],
)
class RepoDetail extends _$RepoDetail {
  @override
  Future<Repository> build({
    required String owner,
    required String repo,
  }) async {
    final client = ref.watch(restProvider);
    final repoData = await client.getRepoDetail(owner, repo);
    return Repository.fromRest(repoData);
  }
}

@Riverpod(
  keepAlive: true,
  dependencies: [rest],
)
class StarredRepoList extends _$StarredRepoList {
  @override
  Future<List<Repository>> build() async {
    final client = ref.watch(restProvider);
    final repoListData = await client.getStarredRepoList('asc');
    return repoListData.map(Repository.fromRest).toList();
  }
}

@Riverpod(
  keepAlive: false,
  dependencies: [rest],
)
Future<void> star(
  StarRef ref, {
  required String owner,
  required String repo,
  required bool viewerHasStarred,
}) async {
  if (viewerHasStarred) {
    await ref.read(restProvider).unstar(owner, repo);
  } else {
    await ref.read(restProvider).star(owner, repo);
  }

  // todo: 更新されてない？
  ref
    ..invalidate(repoListProvider)
    ..invalidate(repoDetailProvider)
    ..invalidate(starredRepoListProvider);
}
