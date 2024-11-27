import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_github_client/provider/repository/repository_list.dart';
import 'package:flutter_github_client/provider/service/api/model/graphql_data_model.dart';
import 'package:flutter_github_client/provider/service/api/model/graphql_data_model.graphql.dart';
import 'package:flutter_github_client/ui/repository/repository_list_page.graphql.dart';
import 'package:flutter_github_client/ui/repository/widget/repository_list_container.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
