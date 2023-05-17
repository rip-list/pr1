
import 'package:moor_flutter/moor_flutter.dart';
part "database.g.dart";

@DataClassName('comment')
class Comment extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get nickname => text().withLength(max: 40)();
  TextColumn get description => text().nullable()();
}
@DataClassName('links')
class Links extends Table 
{
IntColumn get id => integer().autoIncrement()();
TextColumn get link => text().nullable()();


}

@UseMoor(
  tables: [Comment, Links],
  
)
class Database extends _$Database {
  Database() : super(FlutterQueryExecutor.inDatabaseFolder(path: "db.sqllite", logStatements: true));

 @override
  int get schemaVersion => 1;
  Future<List<Comment>> getAllTasks() => select(comment).get();
}
