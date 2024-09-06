import 'package:flutter/material.dart';
import 'package:flutter_github_client/state/api_protocol_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ListAppBar extends HookConsumerWidget implements PreferredSizeWidget {
  const ListAppBar({super.key});

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
