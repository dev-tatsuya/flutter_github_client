// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repository_list_page.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$repositoryListHash() => r'51ecd3b18ee42efa20eb6bbe727a636a0c18d7cc';

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
