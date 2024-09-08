import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_github_client/foundation/graphql/data_model.dart';
import 'package:flutter_github_client/state/repository_state.dart';
import 'package:flutter_github_client/ui/component/repository_list_container.dart';
import 'package:flutter_github_client/ui/starred_repository_list/starred_repository_list_page.graphql.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class StarredRepositoryListPage extends HookConsumerWidget {
  const StarredRepositoryListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RepositoryListContainer(
      useGraphQLQuery: useQuery$StarredRepositoryList,
      graphQLQueryConverter: (data) =>
          data.viewer.starredRepositories.edges
              ?.map((e) => e?.node.toDomain())
              .nonNulls
              .toList() ??
          [],
      restRepositoryListProvider: starredRepositoryListProvider,
    );
  }
}
