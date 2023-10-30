// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dog_category.dart';

// **************************************************************************
// ModelGenerator
// **************************************************************************

// ignore_for_file:

class _DogCategoryId extends IColumn<DogCategory> {
  const _DogCategoryId(
    super.str, {
    super.tableName,
  });
}

class _DogCategoryName extends IColumn<DogCategory> {
  const _DogCategoryName(
    super.str, {
    super.tableName,
  });
}

extension DogCategoryQuery on DogCategory {
  static String get name => 'dog_category';
  static IColumn<DogCategory> get dogCategoryId =>
      const _DogCategoryId('id', tableName: 'dog_category');
  static IColumn<DogCategory> get dogCategoryName =>
      const _DogCategoryName('name', tableName: 'dog_category');
  static String get rawCreate => ExtraQuery.instance.createTable(
        name,
        fields: [
          'id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL',
          'name TEXT NOT NULL'
        ],
      );
  Future<void> delete() =>
      ExtraQuery.instance.delete<int, DogCategory, IColumn<DogCategory>>(
        name,
        ConfigSqflite.instance.database,
        IdValue(dogCategoryId, id),
      );
  Map<String, dynamic> toMapFromDB() => {'id': id, 'name': name};
  Future<void> update() =>
      ExtraQuery.instance.update<int, DogCategory, IColumn<DogCategory>>(
        name,
        ConfigSqflite.instance.database,
        map: toMapFromDB(),
        IdValue(dogCategoryId, id),
      );
  static Future<DogCategory?> findOneById(int id) =>
      ExtraQuery.instance.findOneById<int, DogCategory, IColumn<DogCategory>>(
        name,
        ConfigSqflite.instance.database,
        IdValue(dogCategoryId, id),
        parser: (e) => DogCategory.fromJsonDB(e),
      );
  static Future<DogCategory?> findOne() =>
      ExtraQuery.instance.findOne<DogCategory>(
        name,
        ConfigSqflite.instance.database,
        parser: (e) => DogCategory.fromJsonDB(e),
      );
  static Future<List<DogCategory>> find() =>
      ExtraQuery.instance.find<DogCategory>(
        name,
        ConfigSqflite.instance.database,
        parser: (e) => DogCategory.fromJsonDB(e),
      );
  Future<void> insert() => ExtraQuery.instance.insert(
        name,
        ConfigSqflite.instance.database,
        fields: [DogCategoryQuery.dogCategoryName.str],
        values: [name],
      );
  static Future<List<E>>
      rawQuery<E, T extends IColumn<DogCategory>, F, TF extends IColumn<F>>({
    List<T> select = const [],
    List<T> groupBy = const [],
    List<T> oderByByHaving = const [],
    List<T> where = const [],
    List<T> orderBy = const [],
    List<T> having = const [],
    List<TF> innerJoin = const [],
    List<TF> leftJoin = const [],
    int offset = 0,
    int? limit,
    required E Function(Map<String, Object?>) parser,
    bool logQuery = true,
  }) =>
          ExtraQuery.instance.rawQuery<E, DogCategory, T, F, TF>(
            name,
            ConfigSqflite.instance.database,
            parser: parser,
            groupBy: groupBy,
            having: having,
            innerJoin: innerJoin,
            leftJoin: leftJoin,
            limit: limit,
            logQuery: logQuery,
            oderByByHaving: oderByByHaving,
            offset: offset,
            orderBy: orderBy,
            select: select,
            where: where,
          );
  static String get rawDropTable => 'DROP TABLE IF EXISTS dog_category';
}

DogCategory $DogCategoryFromJsonDB(Map<String, dynamic> json) =>
    DogCategory(id: json['id'] as int ?? 0, name: json['name'] as String);