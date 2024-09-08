import 'package:flutter/material.dart';
import 'package:flutter_github_client/core/domain_model.dart';
import 'package:flutter_github_client/state/api_protocol_state.dart';
import 'package:flutter_github_client/ui/component/graphql_container.dart';
import 'package:flutter_github_client/ui/component/list_app_bar.dart';
import 'package:flutter_github_client/ui/component/repository_list_item.dart';
import 'package:flutter_github_client/ui/component/rest_container.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RepositoryListContainer<T> extends HookConsumerWidget {
  const RepositoryListContainer({
    required this.useGraphQLQuery,
    required this.graphQLQueryConverter,
    required this.restRepositoryListProvider,
    super.key,
  });

  final QueryHookResult<T> Function() useGraphQLQuery;
  final List<Repository> Function(T data) graphQLQueryConverter;
  final AutoDisposeFutureProvider<List<Repository>> restRepositoryListProvider;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final apiProtocol = ref.watch(apiProtocolStateProvider);

    Widget? builder(List<Repository> repositoryList) {
      if (repositoryList.isEmpty) return null;
      return ListView.separated(
        itemCount: repositoryList.length,
        separatorBuilder: (_, __) => const Divider(),
        itemBuilder: (_, index) {
          final repository = repositoryList[index];
          return RepositoryListItem(
            key: ValueKey(repository.id),
            repository: repositoryList[index],
          );
        },
      );
    }

    final graphQLContainer = HookBuilder(
      builder: (context) {
        return GraphQLContainer<T, List<Repository>>(
          result: useGraphQLQuery().result,
          converter: graphQLQueryConverter,
          builder: builder,
        );
      },
    );

    final restContainer = Consumer(
      builder: (context, ref, child) {
        return RestContainer(
          asyncValue: ref.watch(restRepositoryListProvider),
          builder: builder,
        );
      },
    );

    return Scaffold(
      appBar: const ListAppBar(),
      body: switch (apiProtocol) {
        ApiProtocolType.graphql => graphQLContainer,
        ApiProtocolType.rest => restContainer,
      },
    );
  }
}
