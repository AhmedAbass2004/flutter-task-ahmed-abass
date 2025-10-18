import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:it_legend_task/features/offers/data/models/product.dart';
import 'package:it_legend_task/features/offers/data/reposatories/product_reposatory.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  final ProductRepository productRepository;

  ProductCubit(this.productRepository) : super(ProductLoading()) {
    fetchAllProducts();
  }

  Future<void> fetchAllProducts() async {
    try {
      final products = await productRepository.getAllProducts();
      emit(ProductLoaded(products));
    } catch (e) {
      emit(ProductError('Failed to load products: $e'));
    }
  }

  Future<void> fetchProductsByCategory(int categoryId) async {
    try {
      final products = await productRepository.getProductsByCategory(
        categoryId,
      );
      emit(ProductLoaded(products));
    } catch (e) {
      emit(ProductError('Failed to load category products: $e'));
    }
  }
}
