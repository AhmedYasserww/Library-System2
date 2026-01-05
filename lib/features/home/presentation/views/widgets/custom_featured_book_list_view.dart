import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:library_system4/features/home/presentation/manager/book_cubit/get_all_book_cubit.dart';
import 'package:library_system4/features/home/presentation/views/widgets/custom_featured_book.dart';

import '../../../../../core/widgets/custom_error_message.dart';
import '../../../../../core/widgets/custom_loading_indicator.dart';
import '../../../../../core/widgets/custom_unexpected_erorr.dart';

class CustomFeaturedBookListView extends StatelessWidget {
  const CustomFeaturedBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetAllBookCubit, GetAllBookState>(
      builder: (context, state) {
        if (state is GetAllBooksLoading) {
          return const SizedBox(
            height: 330,
            child: CustomLoadingIndicator(),
          );
        }
        else if (state is GetAllBooksFailure) {
          return SizedBox(
            height: 330,
            child: CustomErrorMessage(message: state.errorMessage),
          );
        }
        else if (state is GetAllBooksSuccess) {
          return SizedBox(
            height: 280,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, i) {
                return CustomFeaturedBook(
                  bookModel: state.books[i],
                );
              },
            ),
          );
        }
        else {
          return const SizedBox(
            height: 330,
            child: CustomUnexpectedError(),
          );
        }
      },
    );
  }
}
