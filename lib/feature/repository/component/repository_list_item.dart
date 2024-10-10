import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_github_client/feature/repository/component/star_button.dart';
import 'package:flutter_github_client/feature/repository/model/entity.dart';
import 'package:flutter_github_client/feature/repository/util.dart';
import 'package:flutter_github_client/router/app_router.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
                  color: Colors.black38,
                ),
              const Gap(1),
              Text(
                repository.starredCount.format,
                style: const TextStyle(color: Colors.black54),
              ),
              if (repository.language case final Language language) ...[
                const Gap(8),
                Icon(
                  Icons.circle,
                  size: 16,
                  color: _hexToColor(language.color),
                ),
                const Gap(2),
                Text(
                  language.name,
                  style: const TextStyle(color: Colors.black54),
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

Color _hexToColor(String? hexString) {
  if (hexString == null) return Colors.black26;

  try {
    final converted = 'FF${hexString.replaceFirst('#', '')}';
    return Color(int.parse(converted, radix: 16));
  } catch (_) {
    return Colors.black26;
  }
}
