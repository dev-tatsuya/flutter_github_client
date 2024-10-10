import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

int _ssot = 0;

Future<int> _getSsot() async {
  return Future.delayed(const Duration(milliseconds: 500), () => _ssot);
}

Future<void> _updateSsot() async {
  await Future.delayed(const Duration(milliseconds: 500), () => _ssot++);
}

class LocalPersistentStateSample extends HookWidget {
  const LocalPersistentStateSample({super.key});

  @override
  Widget build(BuildContext context) {
    final pendingUpdate = useState<Future<void>?>(null);
    final asyncSnapshot = useFuture(
      useMemoized(
        () async {
          if (pendingUpdate.value != null) {
            await pendingUpdate.value;
          }
          return _getSsot();
        },
        [pendingUpdate.value],
      ),
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (asyncSnapshot.connectionState == ConnectionState.waiting)
          const CircularProgressIndicator.adaptive()
        else
          Text('${asyncSnapshot.data}'),
        TextButton(
          onPressed: (asyncSnapshot.connectionState == ConnectionState.waiting)
              ? null
              : () {
                  // SSOT に変更を促す + 再評価
                  pendingUpdate.value = _updateSsot();
                },
          child: const Text('Increment'),
        ),
      ],
    );
  }
}
