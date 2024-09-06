import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_github_client/router/app_router.dart';

@RoutePage()
class RootPage extends StatelessWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        RepositoryListRoute(),
        StarredRepositoryListRoute(),
      ],
      bottomNavigationBuilder: (context, tabsRouter) {
        return BottomNavigationBar(
          onTap: tabsRouter.setActiveIndex,
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
  }
}
