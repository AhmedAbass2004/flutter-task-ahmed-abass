import 'package:it_legend_task/core/db_services/db_helper.dart';
import '../models/category.dart';

class CategoryDataSource {
  const CategoryDataSource(this.dbHelper);

  final DatabaseHelper dbHelper;

  Future<int> insertCategory(Category category) async {
    final db = await dbHelper.database;
    return await db.insert('categories', category.toMap());
  }

  Future<List<Category>> getAllCategories() async {
    final db = await dbHelper.database;
    final result = await db.query('categories');

    return result.map((map) => Category.fromMap(map)).toList();
  }

  Future<Category?> getCategoryById(int id) async {
    final db = await dbHelper.database;
    final result = await db.query(
      'categories',
      where: 'id = ?',
      whereArgs: [id],
    );
    if (result.isNotEmpty) {
      return Category.fromMap(result.first);
    }
    return null;
  }

  Future<int> updateCategory(Category category) async {
    final db = await dbHelper.database;
    return await db.update(
      'categories',
      category.toMap(),
      where: 'id = ?',
      whereArgs: [category.id],
    );
  }

  Future<int> deleteCategory(int id) async {
    final db = await dbHelper.database;
    return await db.delete('categories', where: 'id = ?', whereArgs: [id]);
  }
}
