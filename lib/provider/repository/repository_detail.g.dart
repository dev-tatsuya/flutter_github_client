// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_detail.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$repositoryDetailHash() => r'7bf8d8b629687a7bbff36cb1b9963cde5581fea0';

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
    restClientProvider,
    starredIdListProvider
  ];

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static final Iterable<ProviderOrFamily> _allTransitiveDependencies =
      <ProviderOrFamily>{
    restClientProvider,
    ...?restClientProvider.allTransitiveDependencies,
    starredIdListProvider,
    ...?starredIdListProvider.allTransitiveDependencies
  };

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'repositoryDetailProvider';
}

/// See also [repositoryDetail].
class RepositoryDetailProvider extends FutureProvider<Repository> {
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
  FutureProviderElement<Repository> createElement() {
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

mixin RepositoryDetailRef on FutureProviderRef<Repository> {
  /// The parameter `owner` of this provider.
  String get owner;

  /// The parameter `repositoryName` of this provider.
  String get repositoryName;
}

class _RepositoryDetailProviderElement extends FutureProviderElement<Repository>
    with RepositoryDetailRef {
  _RepositoryDetailProviderElement(super.provider);

  @override
  String get owner => (origin as RepositoryDetailProvider).owner;
  @override
  String get repositoryName =>
      (origin as RepositoryDetailProvider).repositoryName;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
