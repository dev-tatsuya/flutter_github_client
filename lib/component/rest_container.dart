import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RestContainer<T> extends StatelessWidget {
  const RestContainer({
    required this.asyncValue,
    required this.builder,
    this.emptyWidget,
    this.loadingWidget,
    this.errorWidgetBuilder,
    super.key,
  });

  final AsyncValue<T> asyncValue;
  final Widget? Function(T data) builder;
  final Widget? emptyWidget;
  final Widget? loadingWidget;
  final Widget Function(Object, StackTrace)? errorWidgetBuilder;

  @override
  Widget build(BuildContext context) {
    final empty = emptyWidget ?? const Center(child: Text('Empty'));
    final loading = loadingWidget ?? const Center(child: Text('Fetching ...'));

    return asyncValue.when(
      skipLoadingOnReload: true,
      data: (data) {
        if (data == null) return empty;
        return builder(data) ?? empty;
      },
      loading: () => loading,
      error: (e, st) =>
          errorWidgetBuilder?.call(e, st) ?? Center(child: Text('$e, $st')),
    );
  }
}
