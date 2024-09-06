import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_github_client/api_protocol_state.dart';
import 'package:flutter_github_client/app_router.dart';
import 'package:flutter_github_client/graphql/graphql_container.dart';
import 'package:flutter_github_client/graphql/repo_list_query.graphql.dart';
import 'package:flutter_github_client/model.dart';
import 'package:flutter_github_client/rest/repo_state.dart';
import 'package:flutter_github_client/rest/rest_container.dart';
import 'package:flutter_github_client/use_star.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class RepoListPage extends HookConsumerWidget {
  const RepoListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final apiProtocol = ref.watch(apiProtocolStateProvider);
    final graphqlResult = useQuery$RepoList().result;
    final restResult = ref.watch(repoListProvider);

    final graphQLContainer = GraphQLContainer(
      result: graphqlResult,
      builder: (data) {
        final edges = data.search.edges;
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

class MyAppBar extends HookConsumerWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final apiProtocol = ref.watch(apiProtocolStateProvider);
    final apiProtocolNotifier = ref.watch(apiProtocolStateProvider.notifier);

    return AppBar(
      centerTitle: false,
      title: Text(apiProtocol.displayName),
      actions: [
        TextButton(
          onPressed: () {
            apiProtocolNotifier.update(apiProtocol.next);
          },
          child: Text('Change to ${apiProtocol.next.displayName}'),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class RepoListItem extends HookConsumerWidget {
  const RepoListItem({
    required this.item,
    this.isUsedOnDetail = false,
    super.key,
  });

  final Repository item;
  final bool isUsedOnDetail;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final child = Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  item.nameWithOwner,
                  style: Theme.of(context).textTheme.titleLarge,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              if (!isUsedOnDetail) ...[
                const Gap(8),
                SizedBox(
                  height: 32,
                  child: StarButton(item: item),
                ),
              ],
            ],
          ),
          if (item.description case final String description) ...[
            const Gap(8),
            Text(
              description,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
          if (item.topics.isNotEmpty) ...[
            const Gap(8),
            Wrap(
              spacing: 4,
              runSpacing: 4,
              children: item.topics
                  .map(
                    (e) => Container(
                      padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        e.name,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
          const Gap(8),
          Row(
            children: [
              if (item.viewerHasStarred)
                const Icon(
                  Icons.star,
                  size: 20,
                  color: Colors.orangeAccent,
                )
              else
                const Icon(
                  Icons.star_border,
                  size: 20,
                  color: Colors.black54,
                ),
              const Gap(1),
              Text(
                '${item.starredCount}',
                style: const TextStyle(color: Colors.black54),
              ),
              if (item.language case final Language language) ...[
                const Gap(8),
                Icon(
                  Icons.circle,
                  size: 16,
                  color: language.color == null
                      ? Colors.black12
                      : _hexToColor(language.color!),
                ),
                const Gap(2),
                Text(
                  language.name,
                  style: const TextStyle(color: Colors.black45),
                ),
              ],
            ],
          ),
        ],
      ),
    );

    if (isUsedOnDetail) {
      return child;
    }

    return InkWell(
      onTap: () {
        context.router.push(
          RepoDetailRoute(owner: item.ownerName, name: item.name),
        );
      },
      child: child,
    );
  }
}

class StarButton extends HookConsumerWidget {
  const StarButton({required this.item, super.key});

  final Repository item;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final apiProtocol = ref.watch(apiProtocolStateProvider);
    final starGraphQL = useStar();

    final onPressed = useCallback(
      () {
        switch (apiProtocol) {
          case ApiProtocolType.graphql:
            starGraphQL(
              viewerHasStarred: item.viewerHasStarred,
              id: item.id,
            );
          case ApiProtocolType.rest:
            ref.read(
              starProvider(
                viewerHasStarred: item.viewerHasStarred,
                owner: item.ownerName,
                repo: item.name,
              ).future,
            );
        }
      },
      [apiProtocol, item],
    );

    return item.viewerHasStarred
        ? OutlinedButton(onPressed: onPressed, child: const Text('Unstar'))
        : FilledButton(onPressed: onPressed, child: const Text('Star'));
  }
}

Color _hexToColor(String hexString) {
  try {
    final converted = 'FF${hexString.replaceFirst('#', '')}';
    return Color(int.parse(converted, radix: 16));
  } catch (_) {
    return Colors.black26;
  }
}
