import 'package:moor_flutter/moor_flutter.dart';
part "database.g.dart";

@DataClassName('task')
class Tasks extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get nickname => text().withLength(min: 3, max: 40)();
  TextColumn get description => text().nullable()();
}

@DataClassName('links')
class Links extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get link => text().nullable()();
}

@UseMoor(
  tables: [Tasks, Links],
)
class Database extends _$Database {
  Database()
      : super(FlutterQueryExecutor.inDatabaseFolder(
            path: "db.sqllite", logStatements: true));

  @override
  int get schemaVersion => 1;

  Future<List> getAllTasks() => select(tasks).get();
  Stream<List> watchAllTasks() => select(tasks).watch();
}
