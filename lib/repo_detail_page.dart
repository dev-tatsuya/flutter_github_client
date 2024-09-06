import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_github_client/api_protocol_state.dart';
import 'package:flutter_github_client/domain_model.dart';
import 'package:flutter_github_client/graphql/data_model.dart';
import 'package:flutter_github_client/graphql/graphql_container.dart';
import 'package:flutter_github_client/graphql/repo_detail_query.graphql.dart';
import 'package:flutter_github_client/repo_list_page.dart';
import 'package:flutter_github_client/rest/repo_state.dart';
import 'package:flutter_github_client/rest/rest_container.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
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
    final apiProtocol = ref.watch(apiProtocolStateProvider);

    Widget builder(Repository item) {
      return Column(
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

    final graphQLContainer = HookBuilder(
      builder: (context) {
        final query = useQuery$RepoDetail(
          Options$Query$RepoDetail(
            variables: Variables$Query$RepoDetail(owner: owner, name: name),
          ),
        );

        return GraphQLContainer(
          result: query.result,
          builder: (data) {
            if (data.repository == null) return null;
            return builder(data.repository!.toDomain());
          },
        );
      },
    );

    final restContainer = Consumer(
      builder: (context, ref, child) {
        final asyncValue =
            ref.watch(repoDetailProvider(owner: owner, repo: name));

        return RestContainer(
          asyncValue: asyncValue,
          builder: builder,
        );
      },
    );

    return Scaffold(
      appBar: AppBar(title: Text(name)),
      body: switch (apiProtocol) {
        ApiProtocolType.graphql => graphQLContainer,
        ApiProtocolType.rest => restContainer,
      },
    );
  }
}
