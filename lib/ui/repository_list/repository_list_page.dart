import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_github_client/core/domain_model.dart';
import 'package:flutter_github_client/foundation/graphql/data_model.dart';
import 'package:flutter_github_client/foundation/graphql/data_model.graphql.dart';
import 'package:flutter_github_client/foundation/rest/rest_client.dart';
import 'package:flutter_github_client/ui/component/repository_list_container.dart';
import 'package:flutter_github_client/ui/repository_list/repository_list_page.graphql.dart';
import 'package:flutter_github_client/ui/starred_repository_list/starred_repository_list_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repository_list_page.g.dart';

@Riverpod(keepAlive: true, dependencies: [restClient, starredRepositoryList])
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

@RoutePage()
class RepositoryListPage extends HookConsumerWidget {
  const RepositoryListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RepositoryListContainer(
      useGraphQLQuery: useQuery$RepositoryList,
      graphQLQueryConverter: (data) =>
          data.search.edges
              ?.map((e) {
                if (e?.node case final Fragment$RepositoryData data) {
                  return data.toDomain();
                }
                return null;
              })
              .nonNulls
              .toList() ??
          [],
      restRepositoryListProvider: repositoryListProvider,
    );
  }
}
