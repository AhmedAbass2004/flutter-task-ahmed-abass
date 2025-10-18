class Product {
  final int? id;
  final int categoryId;
  final String name;
  final double price;
  final double? offerPrice;
  final String imageUrl;
  final bool isFavorite;
  final int sellCount;

  Product({
    this.id,
    required this.categoryId,
    required this.name,
    required this.price,
    this.offerPrice,
    required this.imageUrl,
    this.isFavorite = false,
    this.sellCount = 0,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'categoryId': categoryId,
      'name': name,
      'price': price,
      'offerPrice': offerPrice ?? 0,
      'imageUrl': imageUrl,
      'isFavorite': isFavorite ? 1 : 0,
      'sellCount': sellCount,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'] as int?,
      categoryId: map['categoryId'] as int,
      name: map['name'] as String,
      price: (map['price'] as num).toDouble(),
      offerPrice: (map['offerPrice'] as num?)?.toDouble(),
      imageUrl: map['imageUrl'] as String,
      isFavorite: (map['isFavorite'] as int) == 1,
      sellCount: (map['sellCount'] as int?) ?? 0,
    );
  }

  Product copyWith({
    int? id,
    int? categoryId,
    String? name,
    double? price,
    double? offerPrice,
    String? imageUrl,
    bool? isFavorite,
    int? sellCount,
  }) {
    return Product(
      id: id ?? this.id,
      categoryId: categoryId ?? this.categoryId,
      name: name ?? this.name,
      price: price ?? this.price,
      offerPrice: offerPrice ?? this.offerPrice,
      imageUrl: imageUrl ?? this.imageUrl,
      isFavorite: isFavorite ?? this.isFavorite,
      sellCount: sellCount ?? this.sellCount,
    );
  }
}
