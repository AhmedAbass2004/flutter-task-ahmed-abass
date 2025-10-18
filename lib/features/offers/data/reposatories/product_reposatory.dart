import 'package:it_legend_task/features/offers/data/data_sources/product_data_source.dart';
import '../models/product.dart';

class ProductRepository {
  const ProductRepository({required this.productDs});

  final ProductDataSource productDs;

  Future<int> addProduct(Product product) async {
    return await productDs.insertProduct(product);
  }

  Future<List<Product>> getAllProducts() async {
    return await productDs.getAllProducts();
  }

  Future<List<Product>> getProductsByCategory(int categoryId) async {
    return await productDs.getProductsByCategory(categoryId);
  }

  Future<Product?> getProductById(int id) async {
    return await productDs.getProductById(id);
  }

  Future<int> updateProduct(Product product) async {
    return await productDs.updateProduct(product);
  }

  Future<int> deleteProduct(int id) async {
    return await productDs.deleteProduct(id);
  }

  Future<List<Product>> getFavoriteProducts() async {
    return await productDs.getFavoriteProducts();
  }

  Future<int> toggleFavorite(int productId, bool newStatus) async {
    return await productDs.toggleFavorite(productId, newStatus);
  }
}
