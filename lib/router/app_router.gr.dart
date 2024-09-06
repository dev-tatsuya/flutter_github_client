// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [RepositoryDetailPage]
class RepositoryDetailRoute extends PageRouteInfo<RepositoryDetailRouteArgs> {
  RepositoryDetailRoute({
    required String owner,
    required String name,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          RepositoryDetailRoute.name,
          args: RepositoryDetailRouteArgs(
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

  static const String name = 'RepositoryDetailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<RepositoryDetailRouteArgs>(
          orElse: () => RepositoryDetailRouteArgs(
                owner: pathParams.getString('owner'),
                name: pathParams.getString('name'),
              ));
      return RepositoryDetailPage(
        owner: args.owner,
        name: args.name,
        key: args.key,
      );
    },
  );
}

class RepositoryDetailRouteArgs {
  const RepositoryDetailRouteArgs({
    required this.owner,
    required this.name,
    this.key,
  });

  final String owner;

  final String name;

  final Key? key;

  @override
  String toString() {
    return 'RepositoryDetailRouteArgs{owner: $owner, name: $name, key: $key}';
  }
}

/// generated route for
/// [RepositoryListPage]
class RepositoryListRoute extends PageRouteInfo<void> {
  const RepositoryListRoute({List<PageRouteInfo>? children})
      : super(
          RepositoryListRoute.name,
          initialChildren: children,
        );

  static const String name = 'RepositoryListRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const RepositoryListPage();
    },
  );
}

/// generated route for
/// [RepositoryListTabPage]
class RepositoryListTabRoute extends PageRouteInfo<void> {
  const RepositoryListTabRoute({List<PageRouteInfo>? children})
      : super(
          RepositoryListTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'RepositoryListTabRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const RepositoryListTabPage();
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
/// [StarredRepositoryListPage]
class StarredRepositoryListRoute extends PageRouteInfo<void> {
  const StarredRepositoryListRoute({List<PageRouteInfo>? children})
      : super(
          StarredRepositoryListRoute.name,
          initialChildren: children,
        );

  static const String name = 'StarredRepositoryListRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const StarredRepositoryListPage();
    },
  );
}

/// generated route for
/// [StarredRepositoryListTabPage]
class StarredRepositoryListTabRoute extends PageRouteInfo<void> {
  const StarredRepositoryListTabRoute({List<PageRouteInfo>? children})
      : super(
          StarredRepositoryListTabRoute.name,
          initialChildren: children,
        );

  static const String name = 'StarredRepositoryListTabRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const StarredRepositoryListTabPage();
    },
  );
}
