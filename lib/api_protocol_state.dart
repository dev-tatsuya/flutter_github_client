import 'package:flutter_github_client/rest/repo_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'api_protocol_state.g.dart';

enum ApiProtocolType {
  graphql,
  rest,
  ;

  String get displayName => switch (this) {
        graphql => 'GraphQL',
        rest => 'REST',
      };

  ApiProtocolType get next => switch (this) {
        graphql => rest,
        rest => graphql,
      };
}

@Riverpod(
  keepAlive: true,
  dependencies: [RepoList, StarredRepoList, RepoDetail],
)
class ApiProtocolState extends _$ApiProtocolState {
  @override
  ApiProtocolType build() => ApiProtocolType.rest;

  void update(ApiProtocolType type) {
    state = type;

    if (type == ApiProtocolType.rest) {
      ref
        ..invalidate(starredRepoListProvider)
        ..invalidate(repoDetailProvider)
        ..invalidate(repoListProvider);
    }
  }
}
