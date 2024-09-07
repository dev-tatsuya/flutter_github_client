import 'package:flutter_github_client/core/domain_model.dart';
import 'package:flutter_github_client/foundation/rest/rest_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repository_state.g.dart';

@Riverpod(
  keepAlive: false,
  dependencies: [restClient],
)
class RepositoryList extends _$RepositoryList {
  @override
  Future<List<Repository>> build() async {
    final client = ref.watch(restClientProvider);
    final listData = await client.getRepositoryList('dart', 10);
    final repositoryList = listData.items.map((e) => e.toDomain()).toList();

    final result = <Repository>[];
    for (final repository in repositoryList) {
      final starred = await client
          .viewerHasStarred(repository.owner, repository.name)
          .then((_) => true)
          .catchError((_) => false);
      final item = repository.copyWith(viewerHasStarred: starred);
      result.add(item);
    }

    return result;
  }

  void syncCache({
    required String owner,
    required String name,
    required bool viewerHasStarred,
  }) {
    final cachedState = state.value;
    if (cachedState == null) return;

    final updatedState = cachedState.map((e) {
      return (e.owner == owner && e.name == name)
          ? e.copyWith(viewerHasStarred: !viewerHasStarred)
          : e;
    }).toList();

    state = AsyncData(updatedState);
  }
}

@Riverpod(
  keepAlive: true,
  dependencies: [restClient],
)
class RepositoryDetail extends _$RepositoryDetail {
  @override
  Future<Repository> build({
    required String owner,
    required String repositoryName,
  }) async {
    final client = ref.watch(restClientProvider);
    final data = await client.getRepositoryDetail(owner, repositoryName);
    final repository = data.toDomain();
    final starred = await client
        .viewerHasStarred(owner, repositoryName)
        .then((_) => true)
        .catchError((_) => false);
    return repository.copyWith(viewerHasStarred: starred);
  }
}

@Riverpod(
  keepAlive: false,
  dependencies: [restClient],
)
class StarredRepositoryList extends _$StarredRepositoryList {
  @override
  Future<List<Repository>> build() async {
    final client = ref.watch(restClientProvider);
    final listData = await client.getStarredRepositoryList('asc');
    return listData
        .map((e) => e.toDomain().copyWith(viewerHasStarred: true))
        .toList();
  }
}

@Riverpod(
  keepAlive: false,
  dependencies: [
    restClient,
    RepositoryList,
    RepositoryDetail,
    StarredRepositoryList,
  ],
)
Future<void> star(
  StarRef ref, {
  required String owner,
  required String repositoryName,
  required bool viewerHasStarred,
}) async {
  if (viewerHasStarred) {
    await ref.read(restClientProvider).unstar(owner, repositoryName);
  } else {
    await ref.read(restClientProvider).star(owner, repositoryName);
  }

  // RepositoryList の取得が N+1 でパフォーマンスが悪いので
  // provider を invalidate せずキャッシュを同期している
  ref.read(repositoryListProvider.notifier).syncCache(
        owner: owner,
        name: repositoryName,
        viewerHasStarred: viewerHasStarred,
      );
  ref
    ..invalidate(starredRepositoryListProvider)
    ..invalidate(
      repositoryDetailProvider(
        owner: owner,
        repositoryName: repositoryName,
      ),
    );
}
