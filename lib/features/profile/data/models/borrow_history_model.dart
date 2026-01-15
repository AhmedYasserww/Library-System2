class BorrowHistoryModel {
  final int id;
  final String userId;
  final int bookId;
  final String userName;
  final String bookTitle;
  final DateTime borrowDate;
  final DateTime returnDate;
  final bool isReturned;

  BorrowHistoryModel({
    required this.id,
    required this.userId,
    required this.bookId,
    required this.userName,
    required this.bookTitle,
    required this.borrowDate,
    required this.returnDate,
    required this.isReturned,
  });

  factory BorrowHistoryModel.fromJson(Map<String, dynamic> json) {
    return BorrowHistoryModel(
      id: json["id"],
      userId: json["userId"],
      bookId: json["bookId"],
      userName: json["userName"],
      bookTitle: json["bookTitle"],
      borrowDate: DateTime.parse(json["borrowDate"]),
      returnDate: DateTime.parse(json["returnDate"]),
      isReturned: json["isReturned"],
    );
  }
}
