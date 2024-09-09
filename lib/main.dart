import 'package:flutter/material.dart';
import 'package:flutter_github_client/foundation/graphql/graphql_client.dart';
import 'package:flutter_github_client/router/app_router.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// TODO(dev-tatsuya): PAT を指定する
const pat = '';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final client = useValueNotifier(ref.read(graphQLClientProvider));
    final router = useMemoized(AppRouter.new);

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
