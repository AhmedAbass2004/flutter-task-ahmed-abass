import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._init();
  static Database? _database;

  DatabaseHelper._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('it_legend.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    await db.execute('''
      CREATE TABLE categories (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL
      )
    ''');

    await db.execute('''
    CREATE TABLE products (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      categoryId INTEGER NOT NULL,
      name TEXT NOT NULL,
      price REAL NOT NULL,
      offerPrice REAL,
      imageUrl TEXT NOT NULL,
      isFavorite INTEGER NOT NULL,
      sellCount INTEGER NOT NULL DEFAULT 0,
      FOREIGN KEY (categoryId) REFERENCES categories (id) ON DELETE CASCADE
    )
  ''');

    await db.execute('''
    CREATE TABLE subcategories (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      name TEXT NOT NULL,
      imagePath TEXT NOT NULL
    )
  ''');

    await _insertInitialCategories(db);
  }

  Future<void> _insertInitialCategories(Database db) async {
    final categories = [
      {'name': 'ملابس'},
      {'name': 'أكسسوارات'},
      {'name': 'الكترونيات'},
      {'name': 'منتجات تجميل'},
      {'name': 'عقارات'},
    ];

    for (var category in categories) {
      await db.insert('categories', category);
    }

    final subCategories = [
      {'name': 'ملابس رجالية', 'imagePath': 'assets/images/man_clothes.png'},
      {'name': 'ساعات', 'imagePath': 'assets/images/watchs.png'},
      {'name': 'موبيلات', 'imagePath': 'assets/images/cell_phones.png'},
      {
        'name': 'منتجات تجميل',
        'imagePath': 'assets/images/beauty_products.png',
      },
      {'name': 'فلل', 'imagePath': 'assets/images/villas.jpg'},
    ];

    for (var subCategory in subCategories) {
      await db.insert('subcategories', subCategory);
    }

    final products = [
      {
        'categoryId': 1,
        'name': 'حذاء رياضي رجالي',
        'price': 60000000,
        'imageUrl': 'assets/images/products_images/shoe.png',
        'offerPrice': 32000000,
        'isFavorite': 0,
        'sellCount': 3300,
      },
      {
        'categoryId': 1,
        'name': 'جاكيت من الصوف مناسب',
        'price': 60000000,
        'imageUrl': 'assets/images/products_images/black_shirt.png',
        'offerPrice': 32000000,
        'isFavorite': 0,
        'sellCount': 3300,
      },
      {
        'categoryId': 1,
        'name': 'جاكيت من الصوف مناسب',
        'price': 60000000,
        'imageUrl': 'assets/images/products_images/brown_shirt.png',
        'offerPrice': 32000000,
        'isFavorite': 0,
        'sellCount': 3300,
      },
      {
        'categoryId': 1,
        'name': 'جاكيت من الصوف مناسب',
        'price': 60000000,
        'imageUrl': 'assets/images/products_images/black_shirt.png',
        'offerPrice': 32000000,
        'isFavorite': 0,
        'sellCount': 3300,
      },
      {
        'categoryId': 1,
        'name': 'جاكيت من الصوف مناسب',
        'price': 60000000,
        'imageUrl': 'assets/images/products_images/black_shirt.png',
        'offerPrice': 32000000,
        'isFavorite': 0,
        'sellCount': 3300,
      },
      {
        'categoryId': 1,
        'name': 'جاكيت من الصوف مناسب',
        'price': 60000000,
        'imageUrl': 'assets/images/products_images/black_shirt.png',
        'offerPrice': 32000000,
        'isFavorite': 0,
        'sellCount': 3300,
      },
      {
        'categoryId': 1,
        'name': 'جاكيت من الصوف مناسب',
        'price': 60000000,
        'imageUrl': 'assets/images/products_images/black_shirt.png',
        'offerPrice': 32000000,
        'isFavorite': 0,
        'sellCount': 3300,
      },
      {
        'categoryId': 1,
        'name': 'جاكيت من الصوف مناسب',
        'price': 60000000,
        'imageUrl': 'assets/images/products_images/brown_shirt.png',
        'offerPrice': 32000000,
        'isFavorite': 0,
        'sellCount': 3300,
      },
    ];

    for (final product in products) {
      await db.insert('products', product);
    }
  }

  Future close() async {
    final db = await instance.database;
    db.close();
  }
}
