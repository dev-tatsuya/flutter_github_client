import 'package:flutter_github_client/main.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'graphql_client.g.dart';

@Riverpod(keepAlive: true, dependencies: [])
GraphQLClient graphQLClient(Ref ref) {
  return GraphQLClient(
    link: Link.from([
      AuthLink(
        getToken: () {
          if (pat.isEmpty) {
            throw UnimplementedError('main.dart で PAT を設定してください');
          }
          return 'Bearer $pat';
        },
      ),
      HttpLink(
        'https://api.github.com/graphql',
        defaultHeaders: {'X-Github-Next-Global-ID': '1'},
      ),
    ]),
    cache: GraphQLCache(
      store: InMemoryStore(),
    ),
  );
}
