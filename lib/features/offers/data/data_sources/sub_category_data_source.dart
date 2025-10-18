import 'package:it_legend_task/core/db_services/db_helper.dart';
import 'package:it_legend_task/features/offers/data/models/sub_category.dart';

class SubCategoryDataSource {
  SubCategoryDataSource(this.dbHelper);

  final DatabaseHelper dbHelper;

  Future<int> insertSubCategory(SubCategory subCategory) async {
    final db = await dbHelper.database;
    return await db.insert('subcategories', subCategory.toMap());
  }

  Future<List<SubCategory>> getAllSubCategories() async {
    final db = await dbHelper.database;
    final result = await db.query('subcategories');
    return result.map((map) => SubCategory.fromMap(map)).toList();
  }

  Future<List<SubCategory>> getSubCategoriesByCategory(int categoryId) async {
    final db = await dbHelper.database;
    final result = await db.query(
      'subcategories',
      where: 'categoryId = ?',
      whereArgs: [categoryId],
      orderBy: 'name ASC',
    );
    return result.map((map) => SubCategory.fromMap(map)).toList();
  }

  Future<int> updateSubCategory(SubCategory subCategory) async {
    final db = await dbHelper.database;
    return await db.update(
      'subcategories',
      subCategory.toMap(),
      where: 'id = ?',
      whereArgs: [subCategory.id],
    );
  }

  Future<int> deleteSubCategory(int id) async {
    final db = await dbHelper.database;
    return await db.delete('subcategories', where: 'id = ?', whereArgs: [id]);
  }
}
