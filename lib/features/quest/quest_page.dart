import 'package:flutter/material.dart';

class QuestPage extends StatelessWidget {
  final String questId;
  const QuestPage({super.key, required this.questId});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(title: const Text('Quest')), 
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Quest Detail', style: textTheme.headlineLarge),
            const SizedBox(height: 12),
            Text('Quest ID: $questId', style: textTheme.titleMedium),
          ],
        ),
      ),
    );
  }
}
