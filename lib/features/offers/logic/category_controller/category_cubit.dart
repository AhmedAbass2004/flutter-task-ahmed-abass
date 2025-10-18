import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:it_legend_task/features/offers/data/models/category.dart';
import 'package:it_legend_task/features/offers/data/reposatories/category_reposatory.dart';

part 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  final CategoryRepository _categoryRepository;

  CategoryCubit(this._categoryRepository) : super(CategoryLoading()) {
    fetchCategories();
  }

  Future<void> fetchCategories() async {
    try {
      final categories = await _categoryRepository.getAllCategories();
      final general = Category(name: 'كل العروض');
      emit(CategoryLoaded([general, ...categories]));
    } catch (e) {
      emit(CategoryError('Failed to load categories: $e'));
    }
  }
}
