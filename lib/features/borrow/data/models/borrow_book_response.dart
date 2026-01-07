import 'borrow_book_model.dart';

class BorrowBookResponse {
  final bool success;
  final String message;
  final BorrowBookModel? data;

  BorrowBookResponse({
    required this.success,
    required this.message,
    this.data,
  });

  factory BorrowBookResponse.fromJson(Map<String, dynamic> json) {
    return BorrowBookResponse(
      success: json['success'],
      message: json['message'],
      data: json['data'] != null ? BorrowBookModel.fromJson(json['data']) : null,
    );
  }
}
