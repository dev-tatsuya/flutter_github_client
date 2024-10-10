import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_github_client/feature/sample/global_ephemeral_state_sample.dart';
import 'package:flutter_github_client/feature/sample/global_persistent_state_sample.dart';
import 'package:flutter_github_client/feature/sample/local_ephemeral_state_sample.dart';
import 'package:flutter_github_client/feature/sample/local_persistent_state_sample.dart';

@RoutePage()
class SamplePage extends StatelessWidget {
  const SamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('① LocalEphemeralStateSample'),
            LocalEphemeralStateSample(),
            Text('② LocalPersistentStateSample'),
            LocalPersistentStateSample(),
            Text('③ GlobalEphemeralStateSample'),
            GlobalEphemeralStateSample(),
            Text('④ GlobalPersistentStateSample'),
            GlobalPersistentStateSample(),
          ],
        ),
      ),
    );
  }
}
