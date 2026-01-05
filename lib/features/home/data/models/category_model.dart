class CategoryModel {
  final int id;
  final String name;
  final String rowVersion;

  CategoryModel({
    required this.id,
    required this.name,
    required this.rowVersion,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      id: json['id'],
      name: json['name'],
      rowVersion: json['rowVersion'],
    );
  }
}