// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_protocol_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$apiProtocolStateHash() => r'aae4ce9115e1b97f861c39cb4ca3116687b04e88';

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
    repoListProvider,
    starredRepoListProvider,
    repoDetailProvider
  ],
  allTransitiveDependencies: <ProviderOrFamily>{
    repoListProvider,
    ...?repoListProvider.allTransitiveDependencies,
    starredRepoListProvider,
    ...?starredRepoListProvider.allTransitiveDependencies,
    repoDetailProvider,
    ...?repoDetailProvider.allTransitiveDependencies
  },
);

typedef _$ApiProtocolState = Notifier<ApiProtocolType>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
