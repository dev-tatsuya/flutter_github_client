import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_github_client/graphql/repo_detail_query.graphql.dart';
import 'package:flutter_github_client/model.dart';
import 'package:flutter_github_client/repo_list_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class RepoDetailPage extends HookConsumerWidget {
  const RepoDetailPage({
    @pathParam required this.owner,
    @pathParam required this.name,
    super.key,
  });

  final String owner;
  final String name;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final query = useQuery$RepoDetail(
      Options$Query$RepoDetail(
        variables: Variables$Query$RepoDetail(
          owner: owner,
          name: name,
        ),
      ),
    );
    final result = query.result;
    final data = result.parsedData?.repository;

    Widget child;
    if (result.hasException) {
      child = Center(child: Text('${result.exception}'));
    } else if (result.isLoading) {
      child = const Center(child: Text('Fetching ...'));
    } else if (data == null) {
      child = const Center(child: Text('Empty'));
    } else {
      final item = Repository.fromGraphQL(data);
      child = Column(
        children: [
          RepoListItem(item: item, isUsedOnDetail: true),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            width: double.infinity,
            child: StarButton(item: item),
          ),
        ],
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: child,
    );
  }
}
