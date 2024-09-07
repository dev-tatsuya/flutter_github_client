// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$starHash() => r'd34a6509b42a8503a08c8e5e8dfea475256a6496';

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
    required String repositoryName,
    required bool viewerHasStarred,
  }) {
    return StarProvider(
      owner: owner,
      repositoryName: repositoryName,
      viewerHasStarred: viewerHasStarred,
    );
  }

  @override
  StarProvider getProviderOverride(
    covariant StarProvider provider,
  ) {
    return call(
      owner: provider.owner,
      repositoryName: provider.repositoryName,
      viewerHasStarred: provider.viewerHasStarred,
    );
  }

  static final Iterable<ProviderOrFamily> _dependencies = <ProviderOrFamily>{
    restClientProvider,
    repositoryListProvider,
    repositoryDetailProvider,
    starredRepositoryListProvider
  };

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      <ProviderOrFamily>{
    restClientProvider,
    ...?restClientProvider.allTransitiveDependencies,
    repositoryListProvider,
    ...?repositoryListProvider.allTransitiveDependencies,
    repositoryDetailProvider,
    ...?repositoryDetailProvider.allTransitiveDependencies,
    starredRepositoryListProvider,
    ...?starredRepositoryListProvider.allTransitiveDependencies
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
    required String repositoryName,
    required bool viewerHasStarred,
  }) : this._internal(
          (ref) => star(
            ref as StarRef,
            owner: owner,
            repositoryName: repositoryName,
            viewerHasStarred: viewerHasStarred,
          ),
          from: starProvider,
          name: r'starProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product') ? null : _$starHash,
          dependencies: StarFamily._dependencies,
          allTransitiveDependencies: StarFamily._allTransitiveDependencies,
          owner: owner,
          repositoryName: repositoryName,
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
    required this.repositoryName,
    required this.viewerHasStarred,
  }) : super.internal();

  final String owner;
  final String repositoryName;
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
        repositoryName: repositoryName,
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
        other.repositoryName == repositoryName &&
        other.viewerHasStarred == viewerHasStarred;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, owner.hashCode);
    hash = _SystemHash.combine(hash, repositoryName.hashCode);
    hash = _SystemHash.combine(hash, viewerHasStarred.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin StarRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `owner` of this provider.
  String get owner;

  /// The parameter `repositoryName` of this provider.
  String get repositoryName;

  /// The parameter `viewerHasStarred` of this provider.
  bool get viewerHasStarred;
}

class _StarProviderElement extends AutoDisposeFutureProviderElement<void>
    with StarRef {
  _StarProviderElement(super.provider);

  @override
  String get owner => (origin as StarProvider).owner;
  @override
  String get repositoryName => (origin as StarProvider).repositoryName;
  @override
  bool get viewerHasStarred => (origin as StarProvider).viewerHasStarred;
}

String _$repositoryListHash() => r'512d909f693213fcbe58c5c303552b3e2c130735';

/// See also [RepositoryList].
@ProviderFor(RepositoryList)
final repositoryListProvider =
    AutoDisposeAsyncNotifierProvider<RepositoryList, List<Repository>>.internal(
  RepositoryList.new,
  name: r'repositoryListProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$repositoryListHash,
  dependencies: <ProviderOrFamily>[restClientProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    restClientProvider,
    ...?restClientProvider.allTransitiveDependencies
  },
);

typedef _$RepositoryList = AutoDisposeAsyncNotifier<List<Repository>>;
String _$repositoryDetailHash() => r'c8e44a2dfccb7cfcb4e8c75a702975fbaa52c366';

abstract class _$RepositoryDetail extends BuildlessAsyncNotifier<Repository> {
  late final String owner;
  late final String repositoryName;

  FutureOr<Repository> build({
    required String owner,
    required String repositoryName,
  });
}

/// See also [RepositoryDetail].
@ProviderFor(RepositoryDetail)
const repositoryDetailProvider = RepositoryDetailFamily();

/// See also [RepositoryDetail].
class RepositoryDetailFamily extends Family<AsyncValue<Repository>> {
  /// See also [RepositoryDetail].
  const RepositoryDetailFamily();

  /// See also [RepositoryDetail].
  RepositoryDetailProvider call({
    required String owner,
    required String repositoryName,
  }) {
    return RepositoryDetailProvider(
      owner: owner,
      repositoryName: repositoryName,
    );
  }

  @override
  RepositoryDetailProvider getProviderOverride(
    covariant RepositoryDetailProvider provider,
  ) {
    return call(
      owner: provider.owner,
      repositoryName: provider.repositoryName,
    );
  }

  static final Iterable<ProviderOrFamily> _dependencies = <ProviderOrFamily>[
    restClientProvider
  ];

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      <ProviderOrFamily>{
    restClientProvider,
    ...?restClientProvider.allTransitiveDependencies
  };

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'repositoryDetailProvider';
}

/// See also [RepositoryDetail].
class RepositoryDetailProvider
    extends AsyncNotifierProviderImpl<RepositoryDetail, Repository> {
  /// See also [RepositoryDetail].
  RepositoryDetailProvider({
    required String owner,
    required String repositoryName,
  }) : this._internal(
          () => RepositoryDetail()
            ..owner = owner
            ..repositoryName = repositoryName,
          from: repositoryDetailProvider,
          name: r'repositoryDetailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$repositoryDetailHash,
          dependencies: RepositoryDetailFamily._dependencies,
          allTransitiveDependencies:
              RepositoryDetailFamily._allTransitiveDependencies,
          owner: owner,
          repositoryName: repositoryName,
        );

  RepositoryDetailProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.owner,
    required this.repositoryName,
  }) : super.internal();

  final String owner;
  final String repositoryName;

  @override
  FutureOr<Repository> runNotifierBuild(
    covariant RepositoryDetail notifier,
  ) {
    return notifier.build(
      owner: owner,
      repositoryName: repositoryName,
    );
  }

  @override
  Override overrideWith(RepositoryDetail Function() create) {
    return ProviderOverride(
      origin: this,
      override: RepositoryDetailProvider._internal(
        () => create()
          ..owner = owner
          ..repositoryName = repositoryName,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        owner: owner,
        repositoryName: repositoryName,
      ),
    );
  }

  @override
  AsyncNotifierProviderElement<RepositoryDetail, Repository> createElement() {
    return _RepositoryDetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RepositoryDetailProvider &&
        other.owner == owner &&
        other.repositoryName == repositoryName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, owner.hashCode);
    hash = _SystemHash.combine(hash, repositoryName.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin RepositoryDetailRef on AsyncNotifierProviderRef<Repository> {
  /// The parameter `owner` of this provider.
  String get owner;

  /// The parameter `repositoryName` of this provider.
  String get repositoryName;
}

class _RepositoryDetailProviderElement
    extends AsyncNotifierProviderElement<RepositoryDetail, Repository>
    with RepositoryDetailRef {
  _RepositoryDetailProviderElement(super.provider);

  @override
  String get owner => (origin as RepositoryDetailProvider).owner;
  @override
  String get repositoryName =>
      (origin as RepositoryDetailProvider).repositoryName;
}

String _$starredRepositoryListHash() =>
    r'55c78b7cf642ef13f75715cb87db4c67824ec1bd';

/// See also [StarredRepositoryList].
@ProviderFor(StarredRepositoryList)
final starredRepositoryListProvider = AutoDisposeAsyncNotifierProvider<
    StarredRepositoryList, List<Repository>>.internal(
  StarredRepositoryList.new,
  name: r'starredRepositoryListProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$starredRepositoryListHash,
  dependencies: <ProviderOrFamily>[restClientProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    restClientProvider,
    ...?restClientProvider.allTransitiveDependencies
  },
);

typedef _$StarredRepositoryList = AutoDisposeAsyncNotifier<List<Repository>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
