import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_github_client/ui/sample/global_persistent_state_sample.dart';
import 'package:flutter_github_client/ui/sample/global_transient_state_sample.dart';
import 'package:flutter_github_client/ui/sample/local_persistent_state_sample.dart';
import 'package:flutter_github_client/ui/sample/local_transient_state_sample.dart';
import 'package:flutter_github_client/ui/sample/update_local_cache_sample.dart';

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
            Text('① LocalTransientStateSample'),
            LocalTransientStateSample(),
            Text('② LocalPersistentStateSample'),
            LocalPersistentStateSample(),
            Text('③ GlobalTransientStateSample'),
            GlobalTransientStateSample(),
            Text('④ GlobalPersistentStateSample'),
            GlobalPersistentStateSample(),
            Text('⑤ UpdateLocalCacheSample'),
            UpdateLocalCacheSample(),
          ],
        ),
      ),
    );
  }
}
