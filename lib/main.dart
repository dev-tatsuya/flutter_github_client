import 'package:flutter/material.dart';

import 'package:flutter_github_client/app_router.dart';
import 'package:flutter_github_client/graphql/graphql.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
    final client = useValueNotifier(ref.read(graphQLProvider));
    final router = useMemoized(AppRouter.new);

    return GraphQLProvider(
      client: client,
      child: MaterialApp.router(
        routerConfig: router.config(),
      ),
    );
  }
}
