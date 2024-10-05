import 'package:flutter/material.dart';
import 'package:flutter_github_client/app_state/api_protocol_state.dart';
import 'package:flutter_github_client/feature/repository/starred_repository_list_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ListAppBar extends HookConsumerWidget implements PreferredSizeWidget {
  const ListAppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final apiProtocol = ref.watch(apiProtocolStateProvider);

    return AppBar(
      centerTitle: false,
      title: Text(apiProtocol.displayName),
      actions: [
        TextButton(
          onPressed: () => ref.read(apiProtocolStateProvider.notifier).next(
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
