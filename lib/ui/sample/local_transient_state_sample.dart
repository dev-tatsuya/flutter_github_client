import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class LocalTransientStateSample extends HookWidget {
  const LocalTransientStateSample({super.key});

  @override
  Widget build(BuildContext context) {
    final state = useState(0);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('${state.value}'),
        TextButton(
          onPressed: () => state.value++,
          child: const Text('Increment'),
        ),
      ],
    );
  }
}
