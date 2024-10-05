import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'in_memory.g.dart';

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

@Riverpod(keepAlive: true, dependencies: [])
class ApiProtocol extends _$ApiProtocol {
  @override
  ApiProtocolType build() => ApiProtocolType.rest;

  void next({void Function(ApiProtocolType)? onRefresh}) {
    final next = state.next;
    state = next;
    onRefresh?.call(state);
  }
}
