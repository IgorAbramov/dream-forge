import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'app_database.g.dart';

class Dreams extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text()();
  TextColumn get description => text().nullable()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
}

@DriftDatabase(tables: [Dreams])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<int> addDream(String title, {String? description}) {
    return into(dreams).insert(DreamsCompanion.insert(title: title, description: Value(description)));
  }

  Future<List<Dream>> getAllDreams() {
    return select(dreams).get();
  }

  Stream<List<Dream>> watchAllDreams() {
    return select(dreams).watch();
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dir = await getApplicationDocumentsDirectory();
    final file = File(p.join(dir.path, 'dreamforge.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}
