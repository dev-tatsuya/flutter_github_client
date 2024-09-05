import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_github_client/graphql/repo_list_query.graphql.dart';
import 'package:flutter_github_client/graphql/starred_repo_list_query.graphql.dart';
import 'package:flutter_github_client/model.dart';
import 'package:flutter_github_client/repo_list_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class StarredRepoListPage extends HookConsumerWidget {
  const StarredRepoListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final query = useQuery$StarredRepoList();
    final result = query.result;
    final edges = result.parsedData?.viewer.starredRepositories.edges;

    final Widget child;
    if (result.hasException) {
      child = Center(child: Text('${result.exception}'));
    } else if (result.isLoading) {
      child = const Center(child: Text('Fetching ...'));
    } else if (edges == null || edges.isEmpty) {
      child = const Center(child: Text('Empty'));
    } else {
      child = ListView.separated(
        itemCount: edges.length,
        separatorBuilder: (_, __) => const Divider(),
        itemBuilder: (context, index) {
          if (edges[index]?.node case final Fragment$RepositoryItem item) {
            return RepoListItem(item: Repository.fromGraphQL(item));
          }
          return null;
        },
      );
    }

    return Scaffold(
      // TODO(dev-tatsuya): REST と切り替えられるようにする + 共通化
      appBar: AppBar(title: const Text('GraphQL')),
      body: child,
    );
  }
}
