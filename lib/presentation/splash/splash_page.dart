import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sample_architecture/presentation/sample/sample_home_page.dart';

class SplashPage extends HookConsumerWidget {
  const SplashPage({super.key});

  static const routePath = '/';
  static const routeName = 'splashPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // splash起動処理等記述

    return const SampleHomePage();
  }
}
