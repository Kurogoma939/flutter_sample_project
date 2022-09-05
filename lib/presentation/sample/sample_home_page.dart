import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sample_architecture/domain/sample/sample_notifier.dart';

class SampleHomePage extends HookConsumerWidget {
  const SampleHomePage({super.key});

  static const routePath = '/home';
  static const routeName = 'homePage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(sampleNotifierProvider); // stateの呼び出し
    final notifier = ref.read(sampleNotifierProvider.notifier); // notifierの呼び出し

    // 使い方
    // state : state.sampleList
    // notifier : notifier.init()

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sample Home Page',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
    );
  }
}
