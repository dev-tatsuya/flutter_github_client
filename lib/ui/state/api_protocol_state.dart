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

@Riverpod(keepAlive: true, dependencies: [])
class ApiProtocolState extends _$ApiProtocolState {
  @override
  ApiProtocolType build() => ApiProtocolType.rest;

  void next() => state = state.next;
}
