import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_github_client/app_router.dart';
import 'package:flutter_github_client/graphql/repo_list_query.graphql.dart';
import 'package:flutter_github_client/model.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class RepoListPage extends HookConsumerWidget {
  const RepoListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final query = useQuery$RepoList();
    final result = query.result;
    if (result.hasException) {
      return Center(child: Text('${result.exception}'));
    }
    if (result.isLoading) {
      return const Center(child: Text('Fetching ...'));
    }
    final data = result.parsedData?.search.edges;
    if (data == null || data.isEmpty) {
      return const Center(child: Text('Empty'));
    }

    return Scaffold(
      // TODO(dev-tatsuya): REST と切り替えられるようにする + 共通化
      appBar: AppBar(title: const Text('GraphQL')),
      body: ListView.separated(
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
      ),
    );
  }
}

class RepoListItem extends StatelessWidget {
  const RepoListItem({required this.item, super.key});

  final Repository item;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.router.push(const RepoDetailRoute());
      },
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              item.name,
              style: Theme.of(context).textTheme.titleLarge,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
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
                          color: Colors.blue.shade50,
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
                        : hexToColor(language.color!),
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
      ),
    );
  }
}

Color hexToColor(String hexString) {
  final converted = 'FF${hexString.replaceFirst('#', '')}';
  return Color(int.parse(converted, radix: 16));
}
