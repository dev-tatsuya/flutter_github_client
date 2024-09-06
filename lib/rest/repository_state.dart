import 'package:flutter_github_client/domain_model.dart';
import 'package:flutter_github_client/rest/rest.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repository_state.g.dart';

@Riverpod(
  keepAlive: true,
  dependencies: [rest],
)
class RepositoryList extends _$RepositoryList {
  @override
  Future<List<Repository>> build() async {
    final client = ref.watch(restProvider);
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

  void sync({
    required String owner,
    required String name,
    required bool viewerHasStarred,
  }) {
    final cachedData = state.value;
    if (cachedData == null) return;

    final result = cachedData.map((e) {
      if (e.owner == owner && e.name == name) {
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
class RepositoryDetail extends _$RepositoryDetail {
  @override
  Future<Repository> build({
    required String owner,
    required String repositoryName,
  }) async {
    final client = ref.watch(restProvider);
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
  keepAlive: true,
  dependencies: [rest],
)
class StarredRepositoryList extends _$StarredRepositoryList {
  @override
  Future<List<Repository>> build() async {
    final client = ref.watch(restProvider);
    final listData = await client.getStarredRepositoryList('asc');
    return listData
        .map((e) => e.toDomain().copyWith(viewerHasStarred: true))
        .toList();
  }
}

@Riverpod(
  keepAlive: false,
  dependencies: [rest, RepositoryList, RepositoryDetail, StarredRepositoryList],
)
Future<void> star(
  StarRef ref, {
  required String owner,
  required String repositoryName,
  required bool viewerHasStarred,
}) async {
  if (viewerHasStarred) {
    await ref.read(restProvider).unstar(owner, repositoryName);
  } else {
    await ref.read(restProvider).star(owner, repositoryName);
  }

  ref.read(repositoryListProvider.notifier).sync(
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
