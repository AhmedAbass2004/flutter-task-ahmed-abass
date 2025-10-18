import 'package:it_legend_task/features/offers/data/data_sources/category_data_source.dart';

import '../models/category.dart';

class CategoryRepository {
  const CategoryRepository({required this.categoryDS});

  final CategoryDataSource categoryDS;

  Future<int> addCategory(Category category) async {
    return await categoryDS.insertCategory(category);
  }

  Future<List<Category>> getAllCategories() async {
    return await categoryDS.getAllCategories();
  }

  Future<Category?> getCategoryById(int id) async {
    return await categoryDS.getCategoryById(id);
  }

  Future<int> updateCategory(Category category) async {
    return await categoryDS.updateCategory(category);
  }

  Future<int> deleteCategory(int id) async {
    return await categoryDS.deleteCategory(id);
  }
}
