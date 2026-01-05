import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:library_system4/features/library/presentation/views/widgets/custom_book_library.dart';

import '../../../../../core/widgets/custom_error_message.dart';
import '../../../../../core/widgets/custom_loading_indicator.dart';
import '../../../../../core/widgets/custom_unexpected_erorr.dart';
import '../../../../home/presentation/manager/book_cubit/get_all_book_cubit.dart';

class CustomBookLibraryGridView extends StatelessWidget {
  const CustomBookLibraryGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetAllBookCubit, GetAllBookState>(
      builder: (context, state) {
        if (state is GetAllBooksLoading) {
          return SliverToBoxAdapter(
            child: const SizedBox(
              height: 330,
              child: CustomLoadingIndicator(),
            ),
          );
        }
        else if (state is GetAllBooksFailure) {
          return SliverToBoxAdapter(
            child: SizedBox(
              height: 330,
              child: CustomErrorMessage(message: state.errorMessage),
            ),
          );
        }
        else if (state is GetAllBooksSuccess) {
          return SliverPadding(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                      sliver: SliverGrid(
                        delegate: SliverChildBuilderDelegate(
                              (context, index) {
                            return  CustomBookLibrary(
                              bookModel:state.books[index]  ,
                            );
                          },
                          childCount: 10,
                        ),
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          childAspectRatio: 0.57,
                        ),
                      ),
                    );
        }
        else {
          return SliverToBoxAdapter(
            child: const SizedBox(
              height: 330,
              child: CustomUnexpectedError(),
            ),
          );
        }
      },
    );
  }
  }
  //   return BlocBuilder<>(
  //     builder: (context , state) {
  //       return SliverPadding(
  //         padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
  //         sliver: SliverGrid(
  //           delegate: SliverChildBuilderDelegate(
  //                 (context, index) {
  //               return const CustomBookLibrary();
  //             },
  //             childCount: 10,
  //           ),
  //           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
  //             crossAxisCount: 2,
  //             mainAxisSpacing: 10,
  //             crossAxisSpacing: 10,
  //             childAspectRatio: 0.55,
  //           ),
  //         ),
  //       );
  //     }
  //   );
  // }

