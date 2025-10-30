import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/data/dreams_repository.dart';
import '../dream/widgets/dream_list.dart';

class DashboardPage extends ConsumerWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    final dreamsAsync = ref.watch(dreamsStreamProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          dreamsAsync.when(
            data: (dreams) {
              if (dreams.isEmpty) {
                return Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: colorScheme.primary.withOpacity(0.08),
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: colorScheme.primary.withOpacity(0.2)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Your dreams', style: textTheme.titleMedium),
                      const SizedBox(height: 8),
                      Text('To create your first dream go to Dream page', style: textTheme.titleLarge),
                    ],
                  ),
                );
              }
              return Container(
                padding: const EdgeInsets.all(0),
                decoration: const BoxDecoration(),
                constraints: const BoxConstraints(maxHeight: 280),
                child: DreamList(dreams: dreams.take(3).toList()),
              );
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (e, st) => Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: colorScheme.primary.withOpacity(0.08),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: colorScheme.primary.withOpacity(0.2)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Your dreams', style: textTheme.titleMedium),
                  const SizedBox(height: 8),
                  Text('To create your first dream go to Dream page', style: textTheme.titleLarge),
                ],
              ),
            ),
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
