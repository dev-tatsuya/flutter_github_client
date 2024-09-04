import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class StarredRepoListPage extends StatelessWidget {
  const StarredRepoListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('Starred Repo List'),
      ],
    );
  }
}
