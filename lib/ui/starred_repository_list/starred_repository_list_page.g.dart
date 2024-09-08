// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'starred_repository_list_page.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$starredRepositoryListHash() =>
    r'c338146dbabaf6248d1fb9ce5cdfc97b67ec8bb1';

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
