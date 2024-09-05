import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_github_client/api_protocol_state.dart';
import 'package:flutter_github_client/graphql/graphql_container.dart';
import 'package:flutter_github_client/graphql/repo_list_query.graphql.dart';
import 'package:flutter_github_client/graphql/starred_repo_list_query.graphql.dart';
import 'package:flutter_github_client/model.dart';
import 'package:flutter_github_client/repo_list_page.dart';
import 'package:flutter_github_client/rest/repo_state.dart';
import 'package:flutter_github_client/rest/rest_container.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class StarredRepoListPage extends HookConsumerWidget {
  const StarredRepoListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final apiProtocol = ref.watch(apiProtocolStateProvider);
    final graphqlResult = useQuery$StarredRepoList().result;
    final restResult = ref.watch(starredRepoListProvider);

    final graphQLContainer = GraphQLContainer(
      result: graphqlResult,
      builder: (data) {
        final edges = data.viewer.starredRepositories.edges;
        if (edges == null || edges.isEmpty) return null;
        return ListView.separated(
          itemCount: edges.length,
          separatorBuilder: (_, __) => const Divider(),
          itemBuilder: (context, index) {
            if (edges[index]?.node case final Fragment$RepositoryItem item) {
              return RepoListItem(item: Repository.fromGraphQL(item));
            }
            return null;
          },
        );
      },
    );

    final restContainer = RestContainer(
      result: restResult,
      builder: (data) {
        if (data.isEmpty) return null;
        return ListView.separated(
          itemCount: data.length,
          separatorBuilder: (_, __) => const Divider(),
          itemBuilder: (context, index) => RepoListItem(item: data[index]),
        );
      },
    );

    return Scaffold(
      appBar: const MyAppBar(),
      body: switch (apiProtocol) {
        ApiProtocolType.graphql => graphQLContainer,
        ApiProtocolType.rest => restContainer,
      },
    );
  }
}
