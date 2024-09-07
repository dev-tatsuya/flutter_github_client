import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RestContainer<T> extends StatelessWidget {
  const RestContainer({
    required this.asyncValue,
    required this.builder,
    this.skipLoadingOnRefresh = true,
    super.key,
  });

  final AsyncValue<T> asyncValue;
  final Widget? Function(T data) builder;
  final bool skipLoadingOnRefresh;

  @override
  Widget build(BuildContext context) {
    const empty = Center(child: Text('Empty'));

    return asyncValue.when(
      skipLoadingOnRefresh: skipLoadingOnRefresh,
      data: (data) {
        if (data == null) return empty;
        return builder(data) ?? empty;
      },
      error: (e, st) => Center(child: Text('$e')),
      loading: () => const Center(child: Text('Fetching ...')),
    );
  }
}
