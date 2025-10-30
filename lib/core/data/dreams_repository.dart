import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../db/app_database.dart';

final databaseProvider = Provider<AppDatabase>((ref) => AppDatabase());

final dreamsStreamProvider = StreamProvider<List<Dream>>((ref) {
  final db = ref.watch(databaseProvider);
  return db.watchAllDreams();
});

final dreamsActionsProvider = Provider<DreamsActions>((ref) => DreamsActions(ref.watch(databaseProvider)));

class DreamsActions {
  final AppDatabase db;
  DreamsActions(this.db);
  Future<void> addDream(String title, {String? description}) async {
    await db.addDream(title, description: description);
  }
}
