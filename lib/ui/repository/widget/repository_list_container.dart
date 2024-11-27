import 'package:flutter/material.dart';
import 'package:flutter_github_client/domain/model/repository.dart';
import 'package:flutter_github_client/notifier/api_protocol.dart';
import 'package:flutter_github_client/provider/repository/repository.dart';
import 'package:flutter_github_client/ui/repository/widget/repository_list_item.dart';
import 'package:flutter_github_client/ui/widget/async_value_container.dart';
import 'package:flutter_github_client/ui/widget/graphql_query_container.dart';
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
  final FutureProvider<List<Repository>> restRepositoryListProvider;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final apiProtocol = ref.watch(apiProtocolProvider);

    Widget builder(List<Repository> repositoryList) {
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
        return GraphQLQueryContainer<T, List<Repository>>(
          result: useGraphQLQuery().result,
          converter: graphQLQueryConverter,
          builder: builder,
        );
      },
    );

    final restContainer = Consumer(
      builder: (context, ref, child) {
        return AsyncValueContainer(
          asyncValue: ref.watch(restRepositoryListProvider),
          builder: builder,
        );
      },
    );

    return Scaffold(
      appBar: const _ListAppBar(),
      body: switch (apiProtocol) {
        ApiProtocolType.graphql => graphQLContainer,
        ApiProtocolType.rest => restContainer,
      },
    );
  }
}

class _ListAppBar extends HookConsumerWidget implements PreferredSizeWidget {
  const _ListAppBar();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final apiProtocol = ref.watch(apiProtocolProvider);

    return AppBar(
      centerTitle: false,
      title: Text(apiProtocol.displayName),
      actions: [
        TextButton(
          onPressed: () => ref.read(apiProtocolProvider.notifier).next(
            onRefresh: (next) {
              if (next.isRest) {
                ref.invalidate(starredRepositoryListProvider);
              }
            },
          ),
          child: Text('Change to ${apiProtocol.next.displayName}'),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
