import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class RepoDetailPage extends HookConsumerWidget {
  const RepoDetailPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RepoDetailPage'),
      ),
      body: const Column(
        children: [
          Text('RepoDetailPage'),
        ],
      ),
    );
  }
}
