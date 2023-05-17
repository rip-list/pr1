// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: type=lint
class comment extends DataClass implements Insertable<comment> {
  final int id;
  final String nickname;
  final String? description;
  comment({required this.id, required this.nickname, this.description});
  factory comment.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return comment(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      nickname: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}nickname'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['nickname'] = Variable<String>(nickname);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String?>(description);
    }
    return map;
  }

  CommentCompanion toCompanion(bool nullToAbsent) {
    return CommentCompanion(
      id: Value(id),
      nickname: Value(nickname),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
    );
  }

  factory comment.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return comment(
      id: serializer.fromJson<int>(json['id']),
      nickname: serializer.fromJson<String>(json['nickname']),
      description: serializer.fromJson<String?>(json['description']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'nickname': serializer.toJson<String>(nickname),
      'description': serializer.toJson<String?>(description),
    };
  }

  comment copyWith({int? id, String? nickname, String? description}) => comment(
        id: id ?? this.id,
        nickname: nickname ?? this.nickname,
        description: description ?? this.description,
      );
  @override
  String toString() {
    return (StringBuffer('comment(')
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
      (other is comment &&
          other.id == this.id &&
          other.nickname == this.nickname &&
          other.description == this.description);
}

class CommentCompanion extends UpdateCompanion<comment> {
  final Value<int> id;
  final Value<String> nickname;
  final Value<String?> description;
  const CommentCompanion({
    this.id = const Value.absent(),
    this.nickname = const Value.absent(),
    this.description = const Value.absent(),
  });
  CommentCompanion.insert({
    this.id = const Value.absent(),
    required String nickname,
    this.description = const Value.absent(),
  }) : nickname = Value(nickname);
  static Insertable<comment> custom({
    Expression<int>? id,
    Expression<String>? nickname,
    Expression<String?>? description,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (nickname != null) 'nickname': nickname,
      if (description != null) 'description': description,
    });
  }

  CommentCompanion copyWith(
      {Value<int>? id, Value<String>? nickname, Value<String?>? description}) {
    return CommentCompanion(
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
      map['description'] = Variable<String?>(description.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CommentCompanion(')
          ..write('id: $id, ')
          ..write('nickname: $nickname, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }
}

class $CommentTable extends Comment with TableInfo<$CommentTable, comment> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CommentTable(this.attachedDatabase, [this._alias]);
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
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 40),
      type: const StringType(),
      requiredDuringInsert: true);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, nickname, description];
  @override
  String get aliasedName => _alias ?? 'comment';
  @override
  String get actualTableName => 'comment';
  @override
  VerificationContext validateIntegrity(Insertable<comment> instance,
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
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  comment map(Map<String, dynamic> data, {String? tablePrefix}) {
    return comment.fromData(data, attachedDatabase,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $CommentTable createAlias(String alias) {
    return $CommentTable(attachedDatabase, alias);
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
  late final $CommentTable comment = $CommentTable(this);
  late final $LinksTable links = $LinksTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [comment, links];
}