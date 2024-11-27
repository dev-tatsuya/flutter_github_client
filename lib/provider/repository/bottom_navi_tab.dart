import 'package:flutter_github_client/provider/service/shared_preferences.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'bottom_navi_tab.g.dart';

@Riverpod(keepAlive: true, dependencies: [sharedPreferences])
BottomNaviTab bottomNaviTab(BottomNaviTabRef ref) {
  final prefs = ref.watch(sharedPreferencesProvider);
  final index = prefs.getInt(BottomNaviTab.key);
  return BottomNaviTab.values[index ?? 0];
}

enum BottomNaviTab {
  repositoryList,
  starredRepositoryList,
  sample,
  ;

  static String get key => 'bottomNaviTab';

  bool get isRepositoryList => this == repositoryList;

  bool get isStarredRepositoryList => this == starredRepositoryList;

  bool get isSample => this == sample;
}
