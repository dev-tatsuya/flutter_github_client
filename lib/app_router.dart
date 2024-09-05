import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_github_client/repo_detail_page.dart';
import 'package:flutter_github_client/repo_list_page.dart';
import 'package:flutter_github_client/root_page.dart';
import 'package:flutter_github_client/starred_repo_list_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          page: RootRoute.page,
          children: [
            AutoRoute(
              page: RepoListTabRoute.page,
              children: [
                AutoRoute(
                  page: RepoListRoute.page,
                ),
                AutoRoute(page: RepoDetailRoute.page),
              ],
            ),
            AutoRoute(
              page: StarredRepoListTabRoute.page,
              children: [
                AutoRoute(page: StarredRepoListRoute.page),
                AutoRoute(page: RepoDetailRoute.page),
              ],
            ),
          ],
        ),
      ];
}

@RoutePage()
class RepoListTabPage extends AutoRouter {
  const RepoListTabPage({super.key});
}

@RoutePage()
class StarredRepoListTabPage extends AutoRouter {
  const StarredRepoListTabPage({super.key});
}
