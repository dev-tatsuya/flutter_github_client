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
    final repoListData = await client.getRepoList('dart', 10);
    final repoList = repoListData.items.map(Repository.fromRest).toList();

    final result = <Repository>[];
    for (final repo in repoList) {
      final starred = await client
          .viewerHasStarred(repo.ownerName, repo.name)
          .then((_) => true)
          .catchError((_) => false);
      final item = repo.copyWith(viewerHasStarred: starred);
      result.add(item);
    }

    return result;
  }

  void sync({
    required String owner,
    required String repo,
    required bool viewerHasStarred,
  }) {
    final cachedData = state.value;
    if (cachedData == null) return;

    final result = cachedData.map((e) {
      if (e.ownerName == owner && e.name == repo) {
        return e.copyWith(viewerHasStarred: !viewerHasStarred);
      }
      return e;
    }).toList();

    state = AsyncData(result);
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
    final data = Repository.fromRest(repoData);
    final starred = await client
        .viewerHasStarred(owner, repo)
        .then((_) => true)
        .catchError((_) => false);
    return data.copyWith(viewerHasStarred: starred);
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
    final repoList = repoListData.map(Repository.fromRest).toList();
    return repoList.map((e) => e.copyWith(viewerHasStarred: true)).toList();
  }
}

@Riverpod(
  keepAlive: false,
  dependencies: [rest, RepoList, RepoDetail, StarredRepoList],
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

  ref
      .read(repoListProvider.notifier)
      .sync(owner: owner, repo: repo, viewerHasStarred: viewerHasStarred);
  ref
    ..invalidate(starredRepoListProvider)
    ..invalidate(repoDetailProvider(owner: owner, repo: repo));
}
