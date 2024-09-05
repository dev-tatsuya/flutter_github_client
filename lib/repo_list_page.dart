import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_github_client/app_router.dart';
import 'package:flutter_github_client/graphql/repo_list_query.graphql.dart';
import 'package:flutter_github_client/model.dart';
import 'package:flutter_github_client/use_star.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class RepoListPage extends HookConsumerWidget {
  const RepoListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final query = useQuery$RepoList();
    final result = query.result;
    final edges = result.parsedData?.search.edges;

    final Widget child;
    if (result.hasException) {
      child =  Center(child: Text('${result.exception}'));
    } else if (result.isLoading) {
      child =  const Center(child: Text('Fetching ...'));
    } else if (edges == null || edges.isEmpty) {
      child =  const Center(child: Text('Empty'));
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
                  item.name,
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
        final (owner, name) = _separate(item.name);
        context.router.push(RepoDetailRoute(owner: owner, name: name));
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
    final star = useStar(item.id);

    return item.viewerHasStarred
        ? OutlinedButton(
            onPressed: () => star(viewerHasStarred: true),
            child: const Text('Unstar'),
          )
        : FilledButton(
            onPressed: () => star(viewerHasStarred: false),
            child: const Text('Star'),
          );
  }
}

(String, String) _separate(String nameWithOwner) {
  final list = nameWithOwner.split('/');
  return (list[0], list[1]);
}

Color _hexToColor(String hexString) {
  final converted = 'FF${hexString.replaceFirst('#', '')}';
  return Color(int.parse(converted, radix: 16));
}
