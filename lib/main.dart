import 'package:flutter/material.dart';
import 'package:flutter_github_client/foundation/graphql_client.dart';
import 'package:flutter_github_client/router/app_router.dart';
import 'package:flutter_github_client/state/persistent/bottom_navi_tab.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

// TODO(dev-tatsuya): PAT を指定する
const pat = '';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final localStorage = await SharedPreferencesWithCache.create(
    cacheOptions: const SharedPreferencesWithCacheOptions(),
  );

  runApp(
    ProviderScope(
      overrides: [
        localStorageProvider.overrideWithValue(localStorage),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final client = useValueNotifier(ref.watch(graphQLClientProvider));
    final router = ref.watch(appRouterProvider);

    return GraphQLProvider(
      client: client,
      child: MaterialApp.router(
        routerConfig: router.config(),
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.indigo,
          ),
          filledButtonTheme: FilledButtonThemeData(
            style: FilledButton.styleFrom(
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
          outlinedButtonTheme: OutlinedButtonThemeData(
            style: OutlinedButton.styleFrom(
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              side: BorderSide(color: Theme.of(context).primaryColor),
            ),
          ),
          dividerTheme: DividerThemeData(
            indent: 16,
            endIndent: 16,
            space: 0,
            color: Theme.of(context).primaryColor.withOpacity(0.1),
          ),
          listTileTheme: ListTileThemeData(
            leadingAndTrailingTextStyle: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Colors.black54),
          ),
        ),
      ),
    );
  }
}
