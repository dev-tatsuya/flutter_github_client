import 'package:flutter/material.dart';
import 'package:graphql/client.dart';

class GraphQLQueryContainer<T, R> extends StatelessWidget {
  const GraphQLQueryContainer({
    required this.result,
    required this.builder,
    required this.converter,
    this.emptyWidget,
    this.loadingWidget,
    this.errorWidgetBuilder,
    super.key,
  });

  final QueryResult<T> result;
  final Widget Function(R data) builder;
  final R Function(T data) converter;
  final Widget? emptyWidget;
  final Widget? loadingWidget;
  final Widget Function(Object, StackTrace)? errorWidgetBuilder;

  @override
  Widget build(BuildContext context) {
    final data = result.parsedData;
    final empty = emptyWidget ?? const Center(child: Text('Empty'));
    final loading = loadingWidget ?? const Center(child: Text('Fetching ...'));

    if (result.hasException) {
      return errorWidgetBuilder?.call(result.exception!, StackTrace.current) ??
          Center(child: Text('${result.exception}'));
    } else if (result.isLoading) {
      return loading;
    } else if (data == null) {
      return empty;
    } else {
      final result = converter(data);
      if (result == null || (result is List && result.isEmpty)) return empty;

      return builder(result);
    }
  }
}
