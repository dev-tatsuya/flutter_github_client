import 'package:flutter_github_client/main.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'graphql_client.g.dart';

@Riverpod(
  keepAlive: true,
  dependencies: [],
)
GraphQLClient graphQLClient(GraphQLClientRef ref) {
  return GraphQLClient(
    link: Link.from([
      AuthLink(getToken: () => 'Bearer $pat'),
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
