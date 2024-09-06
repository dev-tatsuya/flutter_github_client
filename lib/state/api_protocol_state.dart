import 'package:flutter_github_client/state/repository_state.dart';
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
  dependencies: [RepositoryList, StarredRepositoryList, RepositoryDetail],
)
class ApiProtocolState extends _$ApiProtocolState {
  @override
  ApiProtocolType build() => ApiProtocolType.rest;

  void update(ApiProtocolType type) {
    state = type;

    if (type == ApiProtocolType.rest) {
      ref
        ..invalidate(starredRepositoryListProvider)
        ..invalidate(repositoryDetailProvider)
        ..invalidate(repositoryListProvider);
    }
  }
}
