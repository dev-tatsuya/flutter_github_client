// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [RepoDetailPage]
class RepoDetailRoute extends PageRouteInfo<RepoDetailRouteArgs> {
  RepoDetailRoute({
    required String owner,
    required String name,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          RepoDetailRoute.name,
          args: RepoDetailRouteArgs(
            owner: owner,
            name: name,
            key: key,
          ),
          rawPathParams: {
            'owner': owner,
            'name': name,
          },
          initialChildren: children,
        );

  static const String name = 'RepoDetailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<RepoDetailRouteArgs>(
          orElse: () => RepoDetailRouteArgs(
                owner: pathParams.getString('owner'),
                name: pathParams.getString('name'),
              ));
      return RepoDetailPage(
        owner: args.owner,
        name: args.name,
        key: args.key,
      );
    },
  );
}

class RepoDetailRouteArgs {
  const RepoDetailRouteArgs({
    required this.owner,
    required this.name,
    this.key,
  });

  final String owner;

  final String name;

  final Key? key;

  @override
  String toString() {
    return 'RepoDetailRouteArgs{owner: $owner, name: $name, key: $key}';
  }
}

/// generated route for
/// [RepoListPage]
class RepoListRoute extends PageRouteInfo<void> {
  const RepoListRoute({List<PageRouteInfo>? children})
      : super(
          RepoListRoute.name,
          initialChildren: children,
        );

  static const String name = 'RepoListRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const RepoListPage();
    },
  );
}

/// generated route for
/// [RepoListTabPage]
class RepoListTabRoute extends PageRouteInfo<void> {
  const RepoListTabRoute({List<PageRouteInfo>? children})
      : super(
          RepoListTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'RepoListTabRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const RepoListTabPage();
    },
  );
}

/// generated route for
/// [RootPage]
class RootRoute extends PageRouteInfo<void> {
  const RootRoute({List<PageRouteInfo>? children})
      : super(
          RootRoute.name,
          initialChildren: children,
        );

  static const String name = 'RootRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const RootPage();
    },
  );
}

/// generated route for
/// [StarredRepoListPage]
class StarredRepoListRoute extends PageRouteInfo<void> {
  const StarredRepoListRoute({List<PageRouteInfo>? children})
      : super(
          StarredRepoListRoute.name,
          initialChildren: children,
        );

  static const String name = 'StarredRepoListRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const StarredRepoListPage();
    },
  );
}

/// generated route for
/// [StarredRepoListTabPage]
class StarredRepoListTabRoute extends PageRouteInfo<void> {
  const StarredRepoListTabRoute({List<PageRouteInfo>? children})
      : super(
          StarredRepoListTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'StarredRepoListTabRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const StarredRepoListTabPage();
    },
  );
}
