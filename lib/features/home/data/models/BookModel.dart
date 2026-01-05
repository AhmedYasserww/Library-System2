class BookModel {
  BookModel({
    this.id,
    this.title,
    this.author,
    this.description,
    this.categoryName,
    this.totalCopies,
    this.availableCopies,
    this.createdAt,
    this.rowVersion,
    this.imageUrl,
    this.categoryId,
    this.userBorrows,
    this.favorites,
  });

  BookModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    author = json['author'];
    description = json['description'];
    categoryName = json['categoryName'];
    totalCopies = json['totalCopies'];
    availableCopies = json['availableCopies'];
    createdAt = json['createdAt'];
    rowVersion = json['rowVersion'];
    imageUrl = json['imageUrl'];
    categoryId = json['categoryId'];

    userBorrows = json['userBorrows'] ?? [];
    favorites = json['favorites'] ?? [];
  }

  int? id;
  String? title;
  String? author;
  String? description;
  String? categoryName;
  int? totalCopies;
  int? availableCopies;
  String? createdAt;
  String? rowVersion;
  String? imageUrl;
  int? categoryId;
  List<dynamic>? userBorrows;
  List<dynamic>? favorites;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'author': author,
      'description': description,
      'categoryName': categoryName,
      'totalCopies': totalCopies,
      'availableCopies': availableCopies,
      'createdAt': createdAt,
      'rowVersion': rowVersion,
      'imageUrl': imageUrl,
      'categoryId': categoryId,
      'userBorrows': userBorrows,
      'favorites': favorites,
    };
  }
}
