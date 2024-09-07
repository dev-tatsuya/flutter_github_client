import 'package:flutter_github_client/state/repository_state.dart';
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

@Riverpod(
  keepAlive: true,
  dependencies: [RepositoryList, StarredRepositoryList, RepositoryDetail],
)
class ApiProtocolState extends _$ApiProtocolState {
  @override
  ApiProtocolType build() => ApiProtocolType.rest;

  void update(ApiProtocolType type) {
    state = type;

    if (type.isRest) {
      // repositoryDetailProvider のみ keepAlive: true にしているため invalidate する。
      //
      // 一方、repositoryListProvider と starredRepositoryListProvider は
      // keepAlive: false かつ、この state を監視している画面では APIプロトコルが変更されると
      // Widget Tree が再構築される実装としているため、invalidate は不要。
      ref.invalidate(repositoryDetailProvider);
    }
  }
}
