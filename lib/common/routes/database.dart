
import 'package:moor_flutter/moor_flutter.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

part 'database.g.dart';

class Todos extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get nickname => text().withLength(min: 3, max: 40 )();
  TextColumn get description => text()();
}

@UseMoor(tables: [Todos])
class AppDatabase extends _$AppDatabase {
  AppDatabase()
      : super(_openConnection());

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration =>
      MigrationStrategy(onCreate: (Migrator m) {
        return m.createAll();
      }, onUpgrade: (Migrator m, int from, int to) async {
        if (from == 1) {
          // Migration code from version 1 to 2
        }
      });
Future<DatabaseConnection> _connect() async{
  return AppDatabase().connection;
}


Future<void> addRecord( {required String description, required String nickname}) async {
  final todo = TodosCompanion(nickname: Value(nickname), description: Value(description));
  await into(todos).insert(todo);
}

}

FlutterQueryExecutor _openConnection() {
  return FlutterQueryExecutor.inDatabaseFolder(
    path: 'app_database.sqlite',
    logStatements: true,
  );
  
}

// ignore: unused_element
Future<void> _createSchema(sqflite.Database db, int version) {
  return db.execute('''
   CREATE TABLE todos (
  id INT PRIMARY KEY,
  nickname VARCHAR(40) CHECK (LENGTH(nickname) >= 3 AND LENGTH(nickname) <= 40),
  description TEXT NOT NULL
);
  ''');

  
}

