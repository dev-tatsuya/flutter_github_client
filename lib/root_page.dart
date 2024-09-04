import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_github_client/app_router.dart';

@RoutePage()
class RootPage extends StatelessWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        RepoListRoute(),
        StarredRepoListRoute(),
      ],
      appBarBuilder: (context, tabsRouter) {
        // TODO(dev-tatsuya): REST と切り替えられるようにする
        return AppBar(title: const Text('GraphQL'));
      },
      bottomNavigationBuilder: (context, tabsRouter) {
        return BottomNavigationBar(
          onTap: tabsRouter.setActiveIndex,
          currentIndex: tabsRouter.activeIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'Repo List',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: 'Starred Repo List',
            ),
          ],
        );
      },
    );
  }
}
