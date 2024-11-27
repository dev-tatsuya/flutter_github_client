// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bottom_navi_tab.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$localStorageHash() => r'2c19dd0aeb6ef3085d0644a8b9bc96e0285db8f1';

/// See also [localStorage].
@ProviderFor(localStorage)
final localStorageProvider = Provider<SharedPreferencesWithCache>.internal(
  localStorage,
  name: r'localStorageProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$localStorageHash,
  dependencies: const <ProviderOrFamily>[],
  allTransitiveDependencies: const <ProviderOrFamily>{},
);

typedef LocalStorageRef = ProviderRef<SharedPreferencesWithCache>;
String _$bottomNaviTabHash() => r'5a1ce61fd440fe953be9f2a07ca3f2f054676729';

/// See also [bottomNaviTab].
@ProviderFor(bottomNaviTab)
final bottomNaviTabProvider = Provider<BottomNaviTab>.internal(
  bottomNaviTab,
  name: r'bottomNaviTabProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$bottomNaviTabHash,
  dependencies: <ProviderOrFamily>[localStorageProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    localStorageProvider,
    ...?localStorageProvider.allTransitiveDependencies
  },
);

typedef BottomNaviTabRef = ProviderRef<BottomNaviTab>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
