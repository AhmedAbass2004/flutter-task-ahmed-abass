import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:it_legend_task/features/offers/data/models/sub_category.dart';
import 'package:it_legend_task/features/offers/data/reposatories/sub_category_roposatory.dart';

part 'sub_category_state.dart';

class SubCategoryCubit extends Cubit<SubCategoryState> {
  SubCategoryCubit(this.subCategoryRepository) : super(SubCategoryLoading()) {
    fetchAllSubCategories();
  }

  final SubCategoryRepository subCategoryRepository;

  Future<void> fetchAllSubCategories() async {
    try {
      final subCategories = await subCategoryRepository.getAllSubCategories();
      emit(SubCategoryLoaded(subCategories));
    } catch (e) {
      emit(SubCategoryError('Failed to load subcategories: $e'));
    }
  }
}
