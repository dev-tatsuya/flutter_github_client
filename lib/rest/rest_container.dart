import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RestContainer<T> extends StatelessWidget {
  const RestContainer({
    required this.result,
    required this.builder,
    super.key,
  });

  final AsyncValue<T> result;
  final Widget? Function(T data) builder;

  @override
  Widget build(BuildContext context) {
    const empty = Center(child: Text('Empty'));

    return result.when(
      data: (data) {
        if (data == null) return empty;
        return builder(data) ?? empty;
      },
      error: (e, st) => Center(child: Text('$e')),
      loading: () => const Center(child: Text('Fetching ...')),
    );
  }
}
