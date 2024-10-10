import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'update_local_cache_sample.g.dart';

int _ssot = 0;

@Riverpod(dependencies: [])
class UpdateLocalCache extends _$UpdateLocalCache {
  @override
  Future<int> build() {
    return Future.delayed(const Duration(milliseconds: 500), () => _ssot);
  }

  Future<void> updateSsot() async {
    state = const AsyncLoading();
    await Future.delayed(const Duration(milliseconds: 500), () => _ssot++);
    state = AsyncData(_ssot);
  }
}

class UpdateLocalCacheSample extends ConsumerWidget {
  const UpdateLocalCacheSample({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(updateLocalCacheProvider);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (asyncValue.isLoading)
          const CircularProgressIndicator.adaptive()
        else
          Text('${asyncValue.value}'),
        TextButton(
          onPressed: asyncValue.isLoading
              ? null
              : () => ref.read(updateLocalCacheProvider.notifier).updateSsot(),
          child: const Text('Increment'),
        ),
      ],
    );
  }
}
