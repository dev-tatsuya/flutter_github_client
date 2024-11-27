import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_github_client/provider/repository/bottom_navi_tab.dart';
import 'package:flutter_github_client/ui/repository/repository_detail_page.dart';
import 'package:flutter_github_client/ui/repository/repository_list_page.dart';
import 'package:flutter_github_client/ui/repository/starred_repository_list_page.dart';
import 'package:flutter_github_client/ui/root/root_page.dart';
import 'package:flutter_github_client/ui/sample/sample_page.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_router.g.dart';
part 'app_router.gr.dart';

@Riverpod(keepAlive: true, dependencies: [bottomNaviTab])
AppRouter appRouter(AppRouterRef ref) {
  final initialBottomNaviTab = ref.watch(bottomNaviTabProvider);
  return AppRouter(initialBottomNaviTab);
}

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  AppRouter(this.initialBottomNaviTab);

  final BottomNaviTab initialBottomNaviTab;

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          page: RootRoute.page,
          children: [
            AutoRoute(
              initial: initialBottomNaviTab.isRepositoryList,
              page: RepositoryListTabRoute.page,
              children: [
                AutoRoute(
                  initial: true,
                  page: RepositoryListRoute.page,
                ),
                AutoRoute(page: RepositoryDetailRoute.page),
              ],
            ),
            AutoRoute(
              initial: initialBottomNaviTab.isStarredRepositoryList,
              page: StarredRepositoryListTabRoute.page,
              children: [
                AutoRoute(
                  initial: true,
                  page: StarredRepositoryListRoute.page,
                ),
                AutoRoute(page: RepositoryDetailRoute.page),
              ],
            ),
            AutoRoute(
              initial: initialBottomNaviTab.isSample,
              page: SampleRoute.page,
            ),
          ],
        ),
      ];
}

@RoutePage()
class RepositoryListTabPage extends AutoRouter {
  const RepositoryListTabPage({super.key});
}

@RoutePage()
class StarredRepositoryListTabPage extends AutoRouter {
  const StarredRepositoryListTabPage({super.key});
}
