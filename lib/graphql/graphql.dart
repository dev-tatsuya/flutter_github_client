import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'graphql.g.dart';

@Riverpod(
  keepAlive: true,
  dependencies: [],
)
GraphQLClient graphQL(GraphQLRef ref) {
  final authLink = AuthLink(
    getToken: () {
      // TODO(dev-tatsuya): PAT を指定する
      const pat = '';
      return 'Bearer $pat';
    },
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
