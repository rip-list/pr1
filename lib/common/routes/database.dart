import 'package:moor/moor.dart';
part 'test.g.dart';

@DataClassName('comment')
class Comment extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get nickname => text().withLength(max: 40)();
  TextColumn get description => text().nullable()();
}

@UseMoor(
  tables: [Comment],
  queries: {
    // query to load the total weight for each recipe by loading all ingredients
    // and taking the sum of their amountInGrams.
    'totalWeight': '''
      SELECT r.title, SUM(ir.amount) AS total_weight
        FROM recipes r
        INNER JOIN recipe_ingredients ir ON ir.recipe = r.id
      GROUP BY r.id
     '''
  },
)
class Database extends _$Database {
  Database(QueryExecutor key) : super(key);

  int get schemaVersion => 1;

  MigrationStrategy get migration {
    return MigrationStrategy(
      beforeOpen: (details) async {
        // populate data
        await into(details)
            .insert(const CategoriesCompanion(description: Value('Sweets')));
      },
    );
  }
}
