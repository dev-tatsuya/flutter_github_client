import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'shared_preferences.g.dart';

@Riverpod(keepAlive: true, dependencies: [])
SharedPreferencesWithCache sharedPreferences(SharedPreferencesRef ref) =>
    throw UnimplementedError();
