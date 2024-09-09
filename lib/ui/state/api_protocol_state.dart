import 'package:flutter_github_client/ui/starred_repository_list/starred_repository_list_page.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'api_protocol_state.g.dart';

enum ApiProtocolType {
  graphql,
  rest,
  ;

  bool get isRest => this == rest;

  String get displayName => switch (this) {
        graphql => 'GraphQL',
        rest => 'REST',
      };

  ApiProtocolType get next => switch (this) {
        graphql => rest,
        rest => graphql,
      };
}

@Riverpod(keepAlive: true, dependencies: [starredRepositoryList])
class ApiProtocolState extends _$ApiProtocolState {
  @override
  ApiProtocolType build() => ApiProtocolType.rest;

  void next() {
    final next = state.next;

    state = next;

    if (next.isRest) {
      ref.invalidate(starredRepositoryListProvider);
    }
  }
}
