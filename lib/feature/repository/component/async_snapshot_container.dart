import 'package:flutter/material.dart';

class AsyncSnapshotContainer<T> extends StatelessWidget {
  const AsyncSnapshotContainer({
    required this.asyncSnapshot,
    required this.builder,
    this.emptyWidget,
    this.loadingWidget,
    this.errorWidgetBuilder,
    super.key,
  });

  final AsyncSnapshot<T> asyncSnapshot;
  final Widget Function(T data) builder;
  final Widget? emptyWidget;
  final Widget? loadingWidget;
  final Widget Function(Object, StackTrace)? errorWidgetBuilder;

  @override
  Widget build(BuildContext context) {
    final empty = emptyWidget ?? const Center(child: Text('Empty'));
    final loading = loadingWidget ?? const Center(child: Text('Fetching ...'));

    if (asyncSnapshot.hasError) {
      final e = asyncSnapshot.error!;
      final st = asyncSnapshot.stackTrace ?? StackTrace.current;
      return errorWidgetBuilder?.call(e, st) ?? Center(child: Text('$e, $st'));
    } else if (!asyncSnapshot.hasData &&
        asyncSnapshot.connectionState == ConnectionState.waiting) {
      return loading;
    } else if (!asyncSnapshot.hasData) {
      return empty;
    } else {
      final data = asyncSnapshot.data;
      if (data == null || (data is List && data.isEmpty)) return empty;
      return builder(data);
    }
  }
}
