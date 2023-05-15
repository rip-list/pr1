import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pr1_services/data_models/dbpr1.dart';
import 'package:sqflite/sqflite.dart';

class DBProvaider {
  static final DBProvaider db = DBProvaider();
  Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await initDB();
    return _database!;
  }

  initDB() async {
    Directory documentDirectory = await getApplicationSupportDirectory();
    String path = join(documentDirectory.path, "work.db");
    return await openDatabase(
      path,
      version: 1,
      onOpen: (db) {},
      onCreate: (Database db, int version) async {
        await db.execute(
            "CREATE TABLE comment (id INTEGER PRIMARY KEY, nickname text, description TEXT )"
            ")");
      },
      
    );
  }

  addItem(DBpr pr) async {
    final db = await database;
    var raw = await db.rawInsert(
        "INSERT INTO comment (id, nickname, description) VALUES(?,?,?)",
        [pr.id, pr.nickname, pr.description],
        );
        return raw;
  }
  
}
debugPrint(covariant){}