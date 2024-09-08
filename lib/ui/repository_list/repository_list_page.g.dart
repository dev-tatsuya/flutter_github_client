// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_list_page.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$repositoryListHash() => r'0394c07491673f4d2dee91281ed1b792df06e1a2';

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
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
