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
    if (result.hasException) {
      return Center(child: Text('${result.exception}'));
    }
    if (result.isLoading) {
      return const Center(child: Text('Fetching ...'));
    }
    final data = result.parsedData?.viewer.starredRepositories.edges;
    if (data == null || data.isEmpty) {
      return const Center(child: Text('Empty'));
    }

    return ListView.separated(
      itemCount: data.length,
      separatorBuilder: (BuildContext context, int index) {
        return Divider(
          indent: 16,
          endIndent: 16,
          height: 0,
          color: Colors.black.withOpacity(0.1),
        );
      },
      itemBuilder: (context, index) {
        if (data[index]?.node case final Fragment$RepositoryItem item) {
          return RepoListItem(item: Repository.fromGraphQL(item));
        }
        return null;
      },
    );
  }
}
