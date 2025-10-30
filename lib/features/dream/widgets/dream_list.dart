import 'package:flutter/material.dart';
import '../../../core/db/app_database.dart';
import 'dream_card.dart';

class DreamList extends StatelessWidget {
  final List<Dream> dreams;
  const DreamList({super.key, required this.dreams});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: dreams.length,
      separatorBuilder: (_, __) => const SizedBox(height: 12),
      itemBuilder: (context, index) => DreamCard(dream: dreams[index]),
    );
  }
}
