// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: type=lint
class task extends DataClass implements Insertable<task> {
  final int id;
  final String nickname;
  final String description;
  task({required this.id, required this.nickname, required this.description});
  factory task.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return task(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      nickname: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}nickname'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['nickname'] = Variable<String>(nickname);
    map['description'] = Variable<String>(description);
    return map;
  }

  TasksCompanion toCompanion(bool nullToAbsent) {
    return TasksCompanion(
      id: Value(id),
      nickname: Value(nickname),
      description: Value(description),
    );
  }

  factory task.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return task(
      id: serializer.fromJson<int>(json['id']),
      nickname: serializer.fromJson<String>(json['nickname']),
      description: serializer.fromJson<String>(json['description']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'nickname': serializer.toJson<String>(nickname),
      'description': serializer.toJson<String>(description),
    };
  }

  task copyWith({int? id, String? nickname, String? description}) => task(
        id: id ?? this.id,
        nickname: nickname ?? this.nickname,
        description: description ?? this.description,
      );
  @override
  String toString() {
    return (StringBuffer('task(')
          ..write('id: $id, ')
          ..write('nickname: $nickname, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, nickname, description);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is task &&
          other.id == this.id &&
          other.nickname == this.nickname &&
          other.description == this.description);
}

class TasksCompanion extends UpdateCompanion<task> {
  final Value<int> id;
  final Value<String> nickname;
  final Value<String> description;
  const TasksCompanion({
    this.id = const Value.absent(),
    this.nickname = const Value.absent(),
    this.description = const Value.absent(),
  });
  TasksCompanion.insert({
    this.id = const Value.absent(),
    required String nickname,
    required String description,
  })  : nickname = Value(nickname),
        description = Value(description);
  static Insertable<task> custom({
    Expression<int>? id,
    Expression<String>? nickname,
    Expression<String>? description,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (nickname != null) 'nickname': nickname,
      if (description != null) 'description': description,
    });
  }

  TasksCompanion copyWith(
      {Value<int>? id, Value<String>? nickname, Value<String>? description}) {
    return TasksCompanion(
      id: id ?? this.id,
      nickname: nickname ?? this.nickname,
      description: description ?? this.description,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (nickname.present) {
      map['nickname'] = Variable<String>(nickname.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TasksCompanion(')
          ..write('id: $id, ')
          ..write('nickname: $nickname, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }
}

class $TasksTable extends Tasks with TableInfo<$TasksTable, task> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TasksTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nicknameMeta = const VerificationMeta('nickname');
  @override
  late final GeneratedColumn<String?> nickname = GeneratedColumn<String?>(
      'nickname', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 3, maxTextLength: 40),
      type: const StringType(),
      requiredDuringInsert: true);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, nickname, description];
  @override
  String get aliasedName => _alias ?? 'tasks';
  @override
  String get actualTableName => 'tasks';
  @override
  VerificationContext validateIntegrity(Insertable<task> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('nickname')) {
      context.handle(_nicknameMeta,
          nickname.isAcceptableOrUnknown(data['nickname']!, _nicknameMeta));
    } else if (isInserting) {
      context.missing(_nicknameMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  task map(Map<String, dynamic> data, {String? tablePrefix}) {
    return task.fromData(data, attachedDatabase,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $TasksTable createAlias(String alias) {
    return $TasksTable(attachedDatabase, alias);
  }
}

class links extends DataClass implements Insertable<links> {
  final int id;
  final String? link;
  links({required this.id, this.link});
  factory links.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return links(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      link: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}link']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || link != null) {
      map['link'] = Variable<String?>(link);
    }
    return map;
  }

  LinksCompanion toCompanion(bool nullToAbsent) {
    return LinksCompanion(
      id: Value(id),
      link: link == null && nullToAbsent ? const Value.absent() : Value(link),
    );
  }

  factory links.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return links(
      id: serializer.fromJson<int>(json['id']),
      link: serializer.fromJson<String?>(json['link']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'link': serializer.toJson<String?>(link),
    };
  }

  links copyWith({int? id, String? link}) => links(
        id: id ?? this.id,
        link: link ?? this.link,
      );
  @override
  String toString() {
    return (StringBuffer('links(')
          ..write('id: $id, ')
          ..write('link: $link')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, link);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is links && other.id == this.id && other.link == this.link);
}

class LinksCompanion extends UpdateCompanion<links> {
  final Value<int> id;
  final Value<String?> link;
  const LinksCompanion({
    this.id = const Value.absent(),
    this.link = const Value.absent(),
  });
  LinksCompanion.insert({
    this.id = const Value.absent(),
    this.link = const Value.absent(),
  });
  static Insertable<links> custom({
    Expression<int>? id,
    Expression<String?>? link,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (link != null) 'link': link,
    });
  }

  LinksCompanion copyWith({Value<int>? id, Value<String?>? link}) {
    return LinksCompanion(
      id: id ?? this.id,
      link: link ?? this.link,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (link.present) {
      map['link'] = Variable<String?>(link.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LinksCompanion(')
          ..write('id: $id, ')
          ..write('link: $link')
          ..write(')'))
        .toString();
  }
}

class $LinksTable extends Links with TableInfo<$LinksTable, links> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LinksTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _linkMeta = const VerificationMeta('link');
  @override
  late final GeneratedColumn<String?> link = GeneratedColumn<String?>(
      'link', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, link];
  @override
  String get aliasedName => _alias ?? 'links';
  @override
  String get actualTableName => 'links';
  @override
  VerificationContext validateIntegrity(Insertable<links> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('link')) {
      context.handle(
          _linkMeta, link.isAcceptableOrUnknown(data['link']!, _linkMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  links map(Map<String, dynamic> data, {String? tablePrefix}) {
    return links.fromData(data, attachedDatabase,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $LinksTable createAlias(String alias) {
    return $LinksTable(attachedDatabase, alias);
  }
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $TasksTable tasks = $TasksTable(this);
  late final $LinksTable links = $LinksTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [tasks, links];
}
