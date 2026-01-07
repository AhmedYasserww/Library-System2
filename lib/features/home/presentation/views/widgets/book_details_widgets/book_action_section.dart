import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../core/widgets/custom_button.dart';
import '../../../../../borrow/presentation/manager/borrow_book_cubit.dart';
import '../../../../../home/data/models/BookModel.dart';

class BookActionsSection extends StatelessWidget {
  final BookModel bookModel;

  const BookActionsSection({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BorrowBookCubit, BorrowBookState>(
      listener: (context, state) {
        if (state is BorrowBookSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.message),
              backgroundColor: Colors.green,
            ),
          );
        } else if (state is BorrowBookFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errorMessage),
              backgroundColor: Colors.red,
            ),
          );
        }
      },
      builder: (context, state) {
        bool isLoading = state is BorrowBookLoading;

        return Row(
          children: [
            Expanded(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomButton(
                    text: "Borrow Now",
                    onTap: isLoading
                        ? null
                        : () {
                      context.read<BorrowBookCubit>().borrowBook(bookModel.id!);
                    },
                  ),
                  if (isLoading)
                    Positioned(
                      child: SizedBox(
                        height: 24,
                        width: 24,
                        child: CircularProgressIndicator(
                          color: Colors.white,
                          strokeWidth: 3,
                        ),
                      ),
                    ),
                ],
              ),
            ),
            const SizedBox(width: 12),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(14),
              ),
              child: const Icon(Icons.favorite_border, color: Colors.white),
            ),
          ],
        );
      },
    );
  }
}
