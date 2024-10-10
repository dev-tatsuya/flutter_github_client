import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'global_ephemeral_state_sample.g.dart';

@Riverpod(dependencies: [])
class GlobalEphemeralState extends _$GlobalEphemeralState {
  @override
  int build() => 0;

  void increment() => state++;
}

class GlobalEphemeralStateSample extends ConsumerWidget {
  const GlobalEphemeralStateSample({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(globalEphemeralStateProvider);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('$state'),
        TextButton(
          onPressed: () =>
              ref.read(globalEphemeralStateProvider.notifier).increment(),
          child: const Text('Increment'),
        ),
      ],
    );
  }
}
