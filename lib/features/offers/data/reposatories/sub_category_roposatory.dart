import 'package:it_legend_task/features/offers/data/models/sub_category.dart';

import '../data_sources/sub_category_data_source.dart';

class SubCategoryRepository {
  final SubCategoryDataSource subCategoryDS;

  SubCategoryRepository({required this.subCategoryDS});

  Future<int> addSubCategory(SubCategory subCategory) async {
    return await subCategoryDS.insertSubCategory(subCategory);
  }

  Future<List<SubCategory>> getAllSubCategories() async {
    return await subCategoryDS.getAllSubCategories();
  }

  Future<List<SubCategory>> getSubCategoriesByCategory(int categoryId) async {
    return await subCategoryDS.getSubCategoriesByCategory(categoryId);
  }

  Future<int> updateSubCategory(SubCategory subCategory) async {
    return await subCategoryDS.updateSubCategory(subCategory);
  }

  Future<int> deleteSubCategory(int id) async {
    return await subCategoryDS.deleteSubCategory(id);
  }
}
