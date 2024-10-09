import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'local_storage.g.dart';

@Riverpod(keepAlive: true, dependencies: [])
SharedPreferencesWithCache localStorage(LocalStorageRef ref) =>
    throw UnimplementedError();

@Riverpod(keepAlive: true, dependencies: [localStorage])
BottomNaviTab bottomNaviTab(BottomNaviTabRef ref) {
  final localStorage = ref.watch(localStorageProvider);
  final index = localStorage.getInt(BottomNaviTab.key);
  return BottomNaviTab.values[index ?? 0];
}

enum BottomNaviTab {
  repositoryList,
  starredRepositoryList,
  ;

  static String get key => 'bottomNaviTab';

  bool get isRepositoryList => this == repositoryList;
  bool get isStarredRepositoryList => this == starredRepositoryList;
}
