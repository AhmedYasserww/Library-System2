import 'borrow_history_model.dart';

class UserProfileModel {
  final String id;
  final String fullName;
  final String email;
  final List<BorrowHistoryModel> borrowHistory;
  final List<dynamic> favoriteBooks;

  UserProfileModel({
    required this.id,
    required this.fullName,
    required this.email,
    required this.borrowHistory,
    required this.favoriteBooks,
  });

  factory UserProfileModel.fromJson(Map<String, dynamic> json) {
    return UserProfileModel(
      id: json["id"],
      fullName: json["fullName"],
      email: json["email"],
      borrowHistory: List<BorrowHistoryModel>.from(
        json["borrowHistory"].map((x) => BorrowHistoryModel.fromJson(x)),
      ),
      favoriteBooks: json["favoriteBooks"] ?? [],
    );
  }
}
