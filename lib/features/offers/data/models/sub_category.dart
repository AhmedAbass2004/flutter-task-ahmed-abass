class SubCategory {
  const SubCategory({this.id, required this.name, required this.imagePath});

  final int? id;
  final String name;
  final String imagePath;

  Map<String, dynamic> toMap() {
    return {'id': id, 'name': name, 'imagePath': imagePath};
  }

  factory SubCategory.fromMap(Map<String, dynamic> map) {
    return SubCategory(
      id: map['id'] as int?,
      name: map['name'] as String,
      imagePath: map['imagePath'] as String,
    );
  }
}
