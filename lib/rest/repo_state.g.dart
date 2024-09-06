// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repo_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$starHash() => r'2644527e5e4c2842b969d27e91c74beba10c27d5';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [star].
@ProviderFor(star)
const starProvider = StarFamily();

/// See also [star].
class StarFamily extends Family<AsyncValue<void>> {
  /// See also [star].
  const StarFamily();

  /// See also [star].
  StarProvider call({
    required String owner,
    required String repo,
    required bool viewerHasStarred,
  }) {
    return StarProvider(
      owner: owner,
      repo: repo,
      viewerHasStarred: viewerHasStarred,
    );
  }

  @override
  StarProvider getProviderOverride(
    covariant StarProvider provider,
  ) {
    return call(
      owner: provider.owner,
      repo: provider.repo,
      viewerHasStarred: provider.viewerHasStarred,
    );
  }

  static final Iterable<ProviderOrFamily> _dependencies = <ProviderOrFamily>{
    restProvider,
    repoListProvider,
    repoDetailProvider,
    starredRepoListProvider
  };

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      <ProviderOrFamily>{
    restProvider,
    ...?restProvider.allTransitiveDependencies,
    repoListProvider,
    ...?repoListProvider.allTransitiveDependencies,
    repoDetailProvider,
    ...?repoDetailProvider.allTransitiveDependencies,
    starredRepoListProvider,
    ...?starredRepoListProvider.allTransitiveDependencies
  };

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'starProvider';
}

/// See also [star].
class StarProvider extends AutoDisposeFutureProvider<void> {
  /// See also [star].
  StarProvider({
    required String owner,
    required String repo,
    required bool viewerHasStarred,
  }) : this._internal(
          (ref) => star(
            ref as StarRef,
            owner: owner,
            repo: repo,
            viewerHasStarred: viewerHasStarred,
          ),
          from: starProvider,
          name: r'starProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product') ? null : _$starHash,
          dependencies: StarFamily._dependencies,
          allTransitiveDependencies: StarFamily._allTransitiveDependencies,
          owner: owner,
          repo: repo,
          viewerHasStarred: viewerHasStarred,
        );

  StarProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.owner,
    required this.repo,
    required this.viewerHasStarred,
  }) : super.internal();

  final String owner;
  final String repo;
  final bool viewerHasStarred;

  @override
  Override overrideWith(
    FutureOr<void> Function(StarRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: StarProvider._internal(
        (ref) => create(ref as StarRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        owner: owner,
        repo: repo,
        viewerHasStarred: viewerHasStarred,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _StarProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is StarProvider &&
        other.owner == owner &&
        other.repo == repo &&
        other.viewerHasStarred == viewerHasStarred;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, owner.hashCode);
    hash = _SystemHash.combine(hash, repo.hashCode);
    hash = _SystemHash.combine(hash, viewerHasStarred.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin StarRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `owner` of this provider.
  String get owner;

  /// The parameter `repo` of this provider.
  String get repo;

  /// The parameter `viewerHasStarred` of this provider.
  bool get viewerHasStarred;
}

class _StarProviderElement extends AutoDisposeFutureProviderElement<void>
    with StarRef {
  _StarProviderElement(super.provider);

  @override
  String get owner => (origin as StarProvider).owner;
  @override
  String get repo => (origin as StarProvider).repo;
  @override
  bool get viewerHasStarred => (origin as StarProvider).viewerHasStarred;
}

String _$repoListHash() => r'421a877e82dbe58c9014de94490d4715cab136fe';

/// See also [RepoList].
@ProviderFor(RepoList)
final repoListProvider =
    AsyncNotifierProvider<RepoList, List<Repository>>.internal(
  RepoList.new,
  name: r'repoListProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$repoListHash,
  dependencies: <ProviderOrFamily>[restProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    restProvider,
    ...?restProvider.allTransitiveDependencies
  },
);

typedef _$RepoList = AsyncNotifier<List<Repository>>;
String _$repoDetailHash() => r'4e27e8b309a76ed1b5208a29d6e45d2c41900ca2';

abstract class _$RepoDetail extends BuildlessAsyncNotifier<Repository> {
  late final String owner;
  late final String repo;

  FutureOr<Repository> build({
    required String owner,
    required String repo,
  });
}

/// See also [RepoDetail].
@ProviderFor(RepoDetail)
const repoDetailProvider = RepoDetailFamily();

/// See also [RepoDetail].
class RepoDetailFamily extends Family<AsyncValue<Repository>> {
  /// See also [RepoDetail].
  const RepoDetailFamily();

  /// See also [RepoDetail].
  RepoDetailProvider call({
    required String owner,
    required String repo,
  }) {
    return RepoDetailProvider(
      owner: owner,
      repo: repo,
    );
  }

  @override
  RepoDetailProvider getProviderOverride(
    covariant RepoDetailProvider provider,
  ) {
    return call(
      owner: provider.owner,
      repo: provider.repo,
    );
  }

  static final Iterable<ProviderOrFamily> _dependencies = <ProviderOrFamily>[
    restProvider
  ];

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      <ProviderOrFamily>{
    restProvider,
    ...?restProvider.allTransitiveDependencies
  };

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'repoDetailProvider';
}

/// See also [RepoDetail].
class RepoDetailProvider
    extends AsyncNotifierProviderImpl<RepoDetail, Repository> {
  /// See also [RepoDetail].
  RepoDetailProvider({
    required String owner,
    required String repo,
  }) : this._internal(
          () => RepoDetail()
            ..owner = owner
            ..repo = repo,
          from: repoDetailProvider,
          name: r'repoDetailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$repoDetailHash,
          dependencies: RepoDetailFamily._dependencies,
          allTransitiveDependencies:
              RepoDetailFamily._allTransitiveDependencies,
          owner: owner,
          repo: repo,
        );

  RepoDetailProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.owner,
    required this.repo,
  }) : super.internal();

  final String owner;
  final String repo;

  @override
  FutureOr<Repository> runNotifierBuild(
    covariant RepoDetail notifier,
  ) {
    return notifier.build(
      owner: owner,
      repo: repo,
    );
  }

  @override
  Override overrideWith(RepoDetail Function() create) {
    return ProviderOverride(
      origin: this,
      override: RepoDetailProvider._internal(
        () => create()
          ..owner = owner
          ..repo = repo,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        owner: owner,
        repo: repo,
      ),
    );
  }

  @override
  AsyncNotifierProviderElement<RepoDetail, Repository> createElement() {
    return _RepoDetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RepoDetailProvider &&
        other.owner == owner &&
        other.repo == repo;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, owner.hashCode);
    hash = _SystemHash.combine(hash, repo.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin RepoDetailRef on AsyncNotifierProviderRef<Repository> {
  /// The parameter `owner` of this provider.
  String get owner;

  /// The parameter `repo` of this provider.
  String get repo;
}

class _RepoDetailProviderElement
    extends AsyncNotifierProviderElement<RepoDetail, Repository>
    with RepoDetailRef {
  _RepoDetailProviderElement(super.provider);

  @override
  String get owner => (origin as RepoDetailProvider).owner;
  @override
  String get repo => (origin as RepoDetailProvider).repo;
}

String _$starredRepoListHash() => r'75e18739f05aa1755463353d4c2fb37d06f61b24';

/// See also [StarredRepoList].
@ProviderFor(StarredRepoList)
final starredRepoListProvider =
    AsyncNotifierProvider<StarredRepoList, List<Repository>>.internal(
  StarredRepoList.new,
  name: r'starredRepoListProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$starredRepoListHash,
  dependencies: <ProviderOrFamily>[restProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    restProvider,
    ...?restProvider.allTransitiveDependencies
  },
);

typedef _$StarredRepoList = AsyncNotifier<List<Repository>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
