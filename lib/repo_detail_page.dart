import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_github_client/graphql/repo_detail_query.graphql.dart';
import 'package:flutter_github_client/graphql/schema.docs.graphql.dart';
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
    if (result.hasException) {
      return Center(child: Text('${result.exception}'));
    }
    if (result.isLoading) {
      return const Center(child: Text('Fetching ...'));
    }
    final data = result.parsedData?.repository;
    if (data == null) {
      return const Center(child: Text('Empty'));
    }

    final item = Repository.fromGraphQL(data);

    final star = useMutation$Star();
    final unstar = useMutation$Unstar();

    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
      ),
      body: Column(
        children: [
          RepoListItem(item: item, enableOnTap: false),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            width: double.infinity,
            child: FilledButton(
              style: ButtonStyle(
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
              onPressed: () {
                if (item.viewerHasStarred) {
                  unstar.runMutation(
                    Variables$Mutation$Unstar(
                      input: Input$RemoveStarInput(starrableId: item.id),
                    ),
                  );
                } else {
                  star.runMutation(
                    Variables$Mutation$Star(
                      input: Input$AddStarInput(starrableId: item.id),
                    ),
                  );
                }
              },
              child: Text(item.viewerHasStarred ? 'Unstar' : 'Star'),
            ),
          ),
        ],
      ),
    );
  }
}
