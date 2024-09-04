import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class RepoListPage extends StatelessWidget {
  const RepoListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('Repo List'),
      ],
    );
  }
}
