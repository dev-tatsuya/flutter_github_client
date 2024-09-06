import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_github_client/ui/repository_detail/repository_detail_page.dart';
import 'package:flutter_github_client/ui/repository_list/repository_list_page.dart';
import 'package:flutter_github_client/ui/root_page.dart';
import 'package:flutter_github_client/ui/starred_repository_list/starred_repository_list_page.dart';

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
              page: RepositoryListTabRoute.page,
              children: [
                AutoRoute(page: RepositoryListRoute.page),
                AutoRoute(page: RepositoryDetailRoute.page),
              ],
            ),
            AutoRoute(
              page: StarredRepositoryListTabRoute.page,
              children: [
                AutoRoute(page: StarredRepositoryListRoute.page),
                AutoRoute(page: RepositoryDetailRoute.page),
              ],
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
