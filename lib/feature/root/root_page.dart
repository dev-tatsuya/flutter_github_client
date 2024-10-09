import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_github_client/router/app_router.dart';
import 'package:flutter_github_client/state/persistent/bottom_navi_tab.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class RootPage extends HookConsumerWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AutoTabsScaffold(
      routes: const [
        RepositoryListRoute(),
        StarredRepositoryListRoute(),
      ],
      bottomNavigationBuilder: (context, tabsRouter) {
        return HookConsumer(
          builder: (context, ref, child) {
            final onTapTab = useCallback((int index) {
              tabsRouter.setActiveIndex(index);
              final localStorage = ref.read(localStorageProvider);
              unawaited(localStorage.setInt(BottomNaviTab.key, index));
            });

            return BottomNavigationBar(
              onTap: onTapTab,
              currentIndex: tabsRouter.activeIndex,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.list),
                  label: 'Repository List',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.star),
                  label: 'Starred Repository List',
                ),
              ],
            );
          },
        );
      },
    );
  }
}
