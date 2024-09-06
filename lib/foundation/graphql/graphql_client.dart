import 'package:flutter_github_client/main.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'graphql_client.g.dart';

@Riverpod(
  keepAlive: true,
  dependencies: [],
)
GraphQLClient graphQLClient(GraphQLClientRef ref) {
  final authLink = AuthLink(
    getToken: () => 'Bearer $pat',
  );

  final httpLink = HttpLink(
    'https://api.github.com/graphql',
    defaultHeaders: {
      'X-Github-Next-Global-ID': '1',
    },
  );

  final link = Link.from([authLink, httpLink]);

  return GraphQLClient(
    link: link,
    cache: GraphQLCache(
      store: InMemoryStore(),
    ),
  );
}
