import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'global_persistent_state_sample.g.dart';

int _ssot = 0;

@Riverpod(dependencies: [])
Future<int> globalPersistentState(GlobalPersistentStateRef ref) async {
  return Future.delayed(const Duration(milliseconds: 500), () => _ssot);
}

Future<void> _updateSsot() async {
  await Future.delayed(const Duration(milliseconds: 500), () => _ssot++);
}

class GlobalPersistentStateSample extends HookConsumerWidget {
  const GlobalPersistentStateSample({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(globalPersistentStateProvider);
    final pendingUpdate = useState(false);
    final isLoading = asyncValue.isLoading || pendingUpdate.value;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (isLoading)
          const CircularProgressIndicator.adaptive()
        else
          Text('${asyncValue.value}'),
        TextButton(
          onPressed: isLoading
              ? null
              : () async {
                  pendingUpdate.value = true;
                  // SSOT に変更を促す
                  await _updateSsot();
                  // invalidate
                  ref.invalidate(globalPersistentStateProvider);
                  pendingUpdate.value = false;
                },
          child: const Text('Increment'),
        ),
      ],
    );
  }
}
