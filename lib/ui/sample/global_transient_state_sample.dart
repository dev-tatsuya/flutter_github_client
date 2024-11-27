import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'global_transient_state_sample.g.dart';

@Riverpod(dependencies: [])
class GlobalTransientState extends _$GlobalTransientState {
  @override
  int build() => 0;

  void updateSsot() => state++;
}

class GlobalTransientStateSample extends ConsumerWidget {
  const GlobalTransientStateSample({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(globalTransientStateProvider);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('$state'),
        TextButton(
          onPressed: () =>
              ref.read(globalTransientStateProvider.notifier).updateSsot(),
          child: const Text('Increment'),
        ),
      ],
    );
  }
}
