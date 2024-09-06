import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_github_client/core/domain_model.dart';
import 'package:flutter_github_client/foundation/graphql/data_model.dart';
import 'package:flutter_github_client/router/app_router.dart';
import 'package:flutter_github_client/state/api_protocol_state.dart';
import 'package:flutter_github_client/state/repository_state.dart';
import 'package:flutter_github_client/ui/component/graphql_container.dart';
import 'package:flutter_github_client/ui/component/rest_container.dart';
import 'package:flutter_github_client/ui/repository_list/repository_list_query.graphql.dart';
import 'package:flutter_github_client/ui/use_star.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class RepositoryListPage extends HookConsumerWidget {
  const RepositoryListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final apiProtocol = ref.watch(apiProtocolStateProvider);

    final graphQLContainer = HookBuilder(
      builder: (context) {
        final query = useQuery$RepositoryList();

        return GraphQLContainer(
          result: query.result,
          builder: (data) {
            final edges = data.search.edges;
            if (edges == null || edges.isEmpty) return null;
            return ListView.separated(
              itemCount: edges.length,
              separatorBuilder: (_, __) => const Divider(),
              itemBuilder: (context, index) {
                if (edges[index]?.node
                    case final Fragment$RepositoryData data) {
                  return RepositoryListItem(repository: data.toDomain());
                }
                return null;
              },
            );
          },
        );
      },
    );

    final restContainer = Consumer(
      builder: (context, ref, child) {
        final asyncValue = ref.watch(repositoryListProvider);

        return RestContainer(
          asyncValue: asyncValue,
          builder: (repositoryList) {
            if (repositoryList.isEmpty) return null;
            return ListView.separated(
              itemCount: repositoryList.length,
              separatorBuilder: (_, __) => const Divider(),
              itemBuilder: (_, index) =>
                  RepositoryListItem(repository: repositoryList[index]),
            );
          },
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

class RepositoryListItem extends HookConsumerWidget {
  const RepositoryListItem({
    required this.repository,
    this.isUsedOnDetail = false,
    super.key,
  });

  final Repository repository;
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
                  repository.nameWithOwner,
                  style: Theme.of(context).textTheme.titleLarge,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              if (!isUsedOnDetail) ...[
                const Gap(8),
                SizedBox(
                  height: 32,
                  child: StarButton(repository: repository),
                ),
              ],
            ],
          ),
          if (repository.description case final String description) ...[
            const Gap(8),
            Text(
              description,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
          if (repository.topics.isNotEmpty) ...[
            const Gap(8),
            Wrap(
              spacing: 4,
              runSpacing: 4,
              children: repository.topics
                  .map(
                    (e) => Container(
                      padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        e,
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
              if (repository.viewerHasStarred)
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
                '${repository.starredCount}',
                style: const TextStyle(color: Colors.black54),
              ),
              if (repository.language case final Language language) ...[
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
          RepositoryDetailRoute(owner: repository.owner, name: repository.name),
        );
      },
      child: child,
    );
  }
}

class StarButton extends HookConsumerWidget {
  const StarButton({required this.repository, super.key});

  final Repository repository;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final apiProtocol = ref.watch(apiProtocolStateProvider);
    final starGraphQL = useStar();

    final onPressed = useCallback(
      () {
        switch (apiProtocol) {
          case ApiProtocolType.graphql:
            starGraphQL(
              viewerHasStarred: repository.viewerHasStarred,
              id: repository.id,
            );
          case ApiProtocolType.rest:
            ref.read(
              starProvider(
                viewerHasStarred: repository.viewerHasStarred,
                owner: repository.owner,
                repositoryName: repository.name,
              ).future,
            );
        }
      },
      [apiProtocol, repository],
    );

    return repository.viewerHasStarred
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
