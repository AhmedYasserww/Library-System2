class BorrowBookModel {
  final int id;
  final String userId;
  final int bookId;
  final DateTime borrowDate;
  final DateTime returnDate;
  final bool isReturned;

  BorrowBookModel({
    required this.id,
    required this.userId,
    required this.bookId,
    required this.borrowDate,
    required this.returnDate,
    required this.isReturned,
  });

  factory BorrowBookModel.fromJson(Map<String, dynamic> json) {
    return BorrowBookModel(
      id: json['id'],
      userId: json['userId'],
      bookId: json['bookId'],
      borrowDate: DateTime.parse(json['borrowDate']),
      returnDate: DateTime.parse(json['returnDate']),
      isReturned: json['isReturned'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'bookId': bookId,
      'borrowDate': borrowDate.toIso8601String(),
      'returnDate': returnDate.toIso8601String(),
      'isReturned': isReturned,
    };
  }
}
