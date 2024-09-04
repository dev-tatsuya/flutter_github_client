import 'package:auto_route/auto_route.dart';

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
              initial: true,
              page: RepoListRoute.page,
            ),
            AutoRoute(
              page: StarredRepoListRoute.page,
            ),
          ],
        ),
      ];
}
