// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$repositoryListHash() => r'9c0a0c10fe56d40a51504f3cad8f13677a4aa706';

/// See also [repositoryList].
@ProviderFor(repositoryList)
final repositoryListProvider =
    AutoDisposeFutureProvider<List<Repository>>.internal(
  repositoryList,
  name: r'repositoryListProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$repositoryListHash,
  dependencies: <ProviderOrFamily>[
    restClientProvider,
    starredRepositoryListProvider
  ],
  allTransitiveDependencies: <ProviderOrFamily>{
    restClientProvider,
    ...?restClientProvider.allTransitiveDependencies,
    starredRepositoryListProvider,
    ...?starredRepositoryListProvider.allTransitiveDependencies
  },
);

typedef RepositoryListRef = AutoDisposeFutureProviderRef<List<Repository>>;
String _$repositoryDetailHash() => r'2a5a26a2972d65ff80049421230a48830f7600be';

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

/// See also [repositoryDetail].
@ProviderFor(repositoryDetail)
const repositoryDetailProvider = RepositoryDetailFamily();

/// See also [repositoryDetail].
class RepositoryDetailFamily extends Family<AsyncValue<Repository>> {
  /// See also [repositoryDetail].
  const RepositoryDetailFamily();

  /// See also [repositoryDetail].
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
    repositoryListProvider
  ];

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      <ProviderOrFamily>{
    repositoryListProvider,
    ...?repositoryListProvider.allTransitiveDependencies
  };

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'repositoryDetailProvider';
}

/// See also [repositoryDetail].
class RepositoryDetailProvider extends AutoDisposeFutureProvider<Repository> {
  /// See also [repositoryDetail].
  RepositoryDetailProvider({
    required String owner,
    required String repositoryName,
  }) : this._internal(
          (ref) => repositoryDetail(
            ref as RepositoryDetailRef,
            owner: owner,
            repositoryName: repositoryName,
          ),
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
  Override overrideWith(
    FutureOr<Repository> Function(RepositoryDetailRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: RepositoryDetailProvider._internal(
        (ref) => create(ref as RepositoryDetailRef),
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
  AutoDisposeFutureProviderElement<Repository> createElement() {
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

mixin RepositoryDetailRef on AutoDisposeFutureProviderRef<Repository> {
  /// The parameter `owner` of this provider.
  String get owner;

  /// The parameter `repositoryName` of this provider.
  String get repositoryName;
}

class _RepositoryDetailProviderElement
    extends AutoDisposeFutureProviderElement<Repository>
    with RepositoryDetailRef {
  _RepositoryDetailProviderElement(super.provider);

  @override
  String get owner => (origin as RepositoryDetailProvider).owner;
  @override
  String get repositoryName =>
      (origin as RepositoryDetailProvider).repositoryName;
}

String _$starredRepositoryListHash() =>
    r'1f05935b78e21b821b217399801fc4c20a881785';

/// See also [starredRepositoryList].
@ProviderFor(starredRepositoryList)
final starredRepositoryListProvider =
    AutoDisposeFutureProvider<List<Repository>>.internal(
  starredRepositoryList,
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

typedef StarredRepositoryListRef
    = AutoDisposeFutureProviderRef<List<Repository>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member