import 'package:idb_shim/idb.dart';
import 'package:idb_shim/idb_browser.dart';

class AppDatabase {
  late final Database _database;

  Future<void> openDatabase() async {
    final idbFactory = getIdbFactory();
    var database = await idbFactory?.open('data.db', version: 1,
        onUpgradeNeeded: (VersionChangeEvent event) {
      final db = event.database;
      if (!db.objectStoreNames.contains('todos')) {
        db.createObjectStore('todos', autoIncrement: true);
      }
    });
    _database = database!;
  }

  Future<void> closeDatabase() async {
    _database.close();
  }

  Future<void> insertTodo(Todo todo) async {
    if (null == _database) {
      throw Exception("Database is not initialized.");
    }
    final transaction = _database.transaction('todos', 'readwrite');
    final store = transaction.objectStore('todos');
    await store.add(todo.toMap());
    await transaction.completed;
  }

  Future<List<Todo>> getAllTodos() async {
    final transaction = _database.transaction('todos', 'readonly');
    final store = transaction.objectStore('todos');
    final records = await store.getAll();
    return (records as List<Map<String, dynamic>>?)
            ?.map((record) => Todo.fromMap(record))
            .toList() ??
        [];
  }

  Future<void> updateTodo(Todo todo) async {
    final transaction = _database.transaction('todos', 'readwrite');
    final store = transaction.objectStore('todos');
    await store.put(todo.toMap());
    await transaction.completed;
  }

  Future<void> deleteTodo(int id) async {
    final transaction = _database.transaction('todos', 'readwrite');
    final store = transaction.objectStore('todos');
    await store.delete(id);
    await transaction.completed;
  }
}

class Todo {
  int? id;
  String nickname;
  String description;

  Todo({
    this.id,
    required this.nickname,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nickname': nickname,
      'description': description,
    };
  }

  static Todo fromMap(Map<String, dynamic> map) {
    return Todo(
      id: map['id'] as int?,
      nickname: map['nickname'] as String,
      description: map['description'] as String,
    );
  }
}
