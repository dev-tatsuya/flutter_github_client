// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_list_page.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$repositoryListHash() => r'ebaa46790ccf11a1768d4becafca783225d6b1c1';

/// See also [repositoryList].
@ProviderFor(repositoryList)
final repositoryListProvider = FutureProvider<List<Repository>>.internal(
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

typedef RepositoryListRef = FutureProviderRef<List<Repository>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
