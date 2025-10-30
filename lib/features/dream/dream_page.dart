import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/data/dreams_repository.dart';
import 'widgets/dream_list.dart';

class DreamPage extends ConsumerWidget {
  final String dreamId;
  const DreamPage({super.key, required this.dreamId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;
    final dreamsAsync = ref.watch(dreamsStreamProvider);
    final actions = ref.read(dreamsActionsProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Dreams')),
      body: dreamsAsync.when(
        data: (dreams) {
          if (dreams.isEmpty) {
            return Center(child: Text('Here you can create dreams', style: textTheme.titleMedium));
          }
          return DreamList(dreams: dreams);
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, st) => Center(child: Text('Here you can create dreams', style: textTheme.titleMedium)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
            final result = await showDialog<_DreamInputResult>(
              context: context,
              builder: (context) => const _AddDreamDialog(),
            );
            if (result != null && result.title.trim().isNotEmpty) {
              await actions.addDream(result.title.trim(), description: result.description?.trim().isNotEmpty == true ? result.description?.trim() : null);
            }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class _AddDreamDialog extends StatefulWidget {
  const _AddDreamDialog();

  @override
  State<_AddDreamDialog> createState() => _AddDreamDialogState();
}

class _AddDreamDialogState extends State<_AddDreamDialog> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return AlertDialog(
      title: Text('New Dream', style: textTheme.titleLarge),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: titleController,
            decoration: const InputDecoration(labelText: 'Title'),
          ),
          const SizedBox(height: 12),
          TextField(
            controller: descriptionController,
            decoration: const InputDecoration(labelText: 'Description'),
            minLines: 1,
            maxLines: 3,
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop(_DreamInputResult(titleController.text, descriptionController.text));
          },
          child: const Text('Add'),
        ),
      ],
    );
  }
}

class _DreamInputResult {
  final String title;
  final String? description;
  _DreamInputResult(this.title, this.description);
}
