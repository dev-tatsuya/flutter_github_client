// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_protocol_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$apiProtocolStateHash() => r'85c11468799ce3ff3a538cf92646d6cce55535e2';

/// See also [ApiProtocolState].
@ProviderFor(ApiProtocolState)
final apiProtocolStateProvider =
    NotifierProvider<ApiProtocolState, ApiProtocolType>.internal(
  ApiProtocolState.new,
  name: r'apiProtocolStateProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$apiProtocolStateHash,
  dependencies: <ProviderOrFamily>[
    repositoryListProvider,
    starredRepositoryListProvider,
    repositoryDetailProvider
  ],
  allTransitiveDependencies: <ProviderOrFamily>{
    repositoryListProvider,
    ...?repositoryListProvider.allTransitiveDependencies,
    starredRepositoryListProvider,
    ...?starredRepositoryListProvider.allTransitiveDependencies,
    repositoryDetailProvider,
    ...?repositoryDetailProvider.allTransitiveDependencies
  },
);

typedef _$ApiProtocolState = Notifier<ApiProtocolType>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
