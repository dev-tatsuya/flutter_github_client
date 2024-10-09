// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$starredRepositoryListHash() =>
    r'f7be7870bf51eda1bfb2542519f604e5c7d5bb44';

/// See also [starredRepositoryList].
@ProviderFor(starredRepositoryList)
final starredRepositoryListProvider = FutureProvider<List<Repository>>.internal(
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

typedef StarredRepositoryListRef = FutureProviderRef<List<Repository>>;
String _$starredIdListHash() => r'0333c017a42dea05f50cb7703d837f4ae40e5230';

/// See also [starredIdList].
@ProviderFor(starredIdList)
final starredIdListProvider = FutureProvider<List<String>>.internal(
  starredIdList,
  name: r'starredIdListProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$starredIdListHash,
  dependencies: <ProviderOrFamily>[starredRepositoryListProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    starredRepositoryListProvider,
    ...?starredRepositoryListProvider.allTransitiveDependencies
  },
);

typedef StarredIdListRef = FutureProviderRef<List<String>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
