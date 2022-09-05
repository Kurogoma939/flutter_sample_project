import 'package:flutter/material.dart';

class SampleDetailPage extends StatelessWidget {
  const SampleDetailPage({super.key});

  static const routePath = 'sample_detail'; // ネストするのでスラッシュ不要
  static const routeName = 'sampleDetailPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Detail Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sample Detail Page',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
    );
  }
}
