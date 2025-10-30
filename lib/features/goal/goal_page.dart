import 'package:flutter/material.dart';

class GoalPage extends StatelessWidget {
  final String goalId;
  const GoalPage({super.key, required this.goalId});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(title: const Text('Goal')), 
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Goal Detail', style: textTheme.headlineLarge),
            const SizedBox(height: 12),
            Text('Goal ID: $goalId', style: textTheme.titleMedium),
          ],
        ),
      ),
    );
  }
}
