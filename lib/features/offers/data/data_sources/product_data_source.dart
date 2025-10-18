import 'package:it_legend_task/core/db_services/db_helper.dart';
import '../models/product.dart';

class ProductDataSource {
  const ProductDataSource(this.dbHelper);

  final DatabaseHelper dbHelper;

  Future<int> insertProduct(Product product) async {
    final db = await dbHelper.database;
    return await db.insert('products', product.toMap());
  }

  Future<List<Product>> getAllProducts() async {
    final db = await dbHelper.database;
    final result = await db.query('products');
    return result.map((map) => Product.fromMap(map)).toList();
  }

  Future<List<Product>> getProductsByCategory(int categoryId) async {
    final db = await dbHelper.database;
    final result = await db.query(
      'products',
      where: 'categoryId = ?',
      whereArgs: [categoryId],
    );
    return result.map((map) => Product.fromMap(map)).toList();
  }

  Future<Product?> getProductById(int id) async {
    final db = await dbHelper.database;
    final result = await db.query('products', where: 'id = ?', whereArgs: [id]);
    if (result.isNotEmpty) {
      return Product.fromMap(result.first);
    }
    return null;
  }

  Future<int> updateProduct(Product product) async {
    final db = await dbHelper.database;
    return await db.update(
      'products',
      product.toMap(),
      where: 'id = ?',
      whereArgs: [product.id],
    );
  }

  Future<int> deleteProduct(int id) async {
    final db = await dbHelper.database;
    return await db.delete('products', where: 'id = ?', whereArgs: [id]);
  }

  Future<List<Product>> getFavoriteProducts() async {
    final db = await dbHelper.database;
    final result = await db.query('products', where: 'isFavorite = 1');
    return result.map((map) => Product.fromMap(map)).toList();
  }

  Future<int> toggleFavorite(int id, bool newStatus) async {
    final db = await dbHelper.database;
    return await db.update(
      'products',
      {'isFavorite': newStatus ? 1 : 0},
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
