import 'package:flutter/material.dart';

class JournalPage extends StatelessWidget {
  const JournalPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(title: const Text('Journal')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Journal', style: textTheme.headlineLarge),
            const SizedBox(height: 12),
            Text('Coming soon...', style: textTheme.titleMedium),
          ],
        ),
      ),
    );
  }
}
