import 'package:get_it/get_it.dart';
import 'package:it_legend_task/core/db_services/db_helper.dart';
import 'package:it_legend_task/features/offers/data/data_sources/category_data_source.dart';
import 'package:it_legend_task/features/offers/data/data_sources/product_data_source.dart';
import 'package:it_legend_task/features/offers/data/data_sources/sub_category_data_source.dart';
import 'package:it_legend_task/features/offers/data/reposatories/category_reposatory.dart';
import 'package:it_legend_task/features/offers/data/reposatories/product_reposatory.dart';
import 'package:it_legend_task/features/offers/data/reposatories/sub_category_roposatory.dart';
import 'package:it_legend_task/features/offers/logic/category_controller/category_cubit.dart';
import 'package:it_legend_task/features/offers/logic/product_controller/product_cubit.dart';
import 'package:it_legend_task/features/offers/logic/sub_category_controller/sub_category_cubit.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Database Helber
  sl.registerLazySingleton<DatabaseHelper>(() => DatabaseHelper.instance);

  //  Data Sources
  sl.registerLazySingleton<CategoryDataSource>(
    () => CategoryDataSource(sl<DatabaseHelper>()),
  );
  sl.registerLazySingleton<ProductDataSource>(
    () => ProductDataSource(sl<DatabaseHelper>()),
  );
  sl.registerLazySingleton<SubCategoryDataSource>(
    () => SubCategoryDataSource(sl<DatabaseHelper>()),
  );

  //  Repositories
  sl.registerLazySingleton<CategoryRepository>(
    () => CategoryRepository(categoryDS: sl<CategoryDataSource>()),
  );
  sl.registerLazySingleton<ProductRepository>(
    () => ProductRepository(productDs: sl<ProductDataSource>()),
  );
  sl.registerLazySingleton<SubCategoryRepository>(
    () => SubCategoryRepository(subCategoryDS: sl<SubCategoryDataSource>()),
  );

  //  Cubits
  sl.registerFactory<CategoryCubit>(
    () => CategoryCubit(sl<CategoryRepository>()),
  );
  sl.registerFactory<ProductCubit>(() => ProductCubit(sl<ProductRepository>()));
  sl.registerFactory<SubCategoryCubit>(
    () => SubCategoryCubit(sl<SubCategoryRepository>()),
  );
}
