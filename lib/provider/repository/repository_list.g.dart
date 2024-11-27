// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_list.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$repositoryListHash() => r'75c6171f2d57003c00e4973aff367ce0afcd4012';

/// See also [repositoryList].
@ProviderFor(repositoryList)
final repositoryListProvider = FutureProvider<List<Repository>>.internal(
  repositoryList,
  name: r'repositoryListProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$repositoryListHash,
  dependencies: <ProviderOrFamily>[restClientProvider, starredIdListProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    restClientProvider,
    ...?restClientProvider.allTransitiveDependencies,
    starredIdListProvider,
    ...?starredIdListProvider.allTransitiveDependencies
  },
);

typedef RepositoryListRef = FutureProviderRef<List<Repository>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
