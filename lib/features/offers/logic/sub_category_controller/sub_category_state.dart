part of 'sub_category_cubit.dart';

sealed class SubCategoryState extends Equatable {
  const SubCategoryState();

  @override
  List<Object?> get props => [];
}

class SubCategoryLoading extends SubCategoryState {}

class SubCategoryLoaded extends SubCategoryState {
  final List<SubCategory> subCategories;

  const SubCategoryLoaded(this.subCategories);

  @override
  List<Object?> get props => [subCategories];
}

class SubCategoryError extends SubCategoryState {
  final String message;

  const SubCategoryError(this.message);

  @override
  List<Object?> get props => [message];
}
