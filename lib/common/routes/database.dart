import 'package:moor_flutter/moor_flutter.dart';
part "database.g.dart";

@DataClassName('task')
class Tasks extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get nickname =>
      text().withLength(min: 3, max: 40).named("nickname")();
  TextColumn get description => text().named("description")();
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
            path: "db.sqlite", logStatements: true));

  @override
  int get schemaVersion => 1;

  Future<List> getAllTasks() => select(tasks).get();
  Stream<List> watchAllTasks() => select(tasks).watch();
  // ignore: non_constant_identifier_names, avoid_types_as_parameter_names
  Future insertTask(task) => into(tasks).insert(task);
  // ignore: non_constant_identifier_names, avoid_types_as_parameter_names
  Future deleteTask(task) => delete(tasks).delete(task);
}
