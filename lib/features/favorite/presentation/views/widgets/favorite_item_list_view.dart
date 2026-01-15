import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:library_system4/features/favorite/presentation/manager/favorite_book_cubit/get_favorite_book_cubit.dart';
import 'package:library_system4/features/favorite/presentation/views/widgets/custom_favorite_item.dart';
import '../../../../home/presentation/views/book_details_view.dart';

class FavoriteItemListView extends StatelessWidget {
  final List<int> selectedItems;
  final Function(int) onItemLongPress;

  const FavoriteItemListView({
    super.key,
    required this.selectedItems,
    required this.onItemLongPress,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetFavoriteBookCubit, GetFavoriteBookState>(
      builder: (context, state) {
        if (state is GetFavoriteBookLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is GetFavoriteBookFailure) {
          return Center(child: Text(state.errorMessage));
        } else if (state is GetFavoriteBookSuccess) {
          final books = state.favoriteBooks;
          if (books.isEmpty) {
            return const Center(child: Text("No favorites yet."));
          }

          return ListView.builder(
            itemCount: books.length,
            itemBuilder: (context, index) {
              final book = books[index];
              final isSelected = selectedItems.contains(index);

              return Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: InkWell(
                  onLongPress: () => onItemLongPress(index),
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      BookDetailsView.routeName,
                      arguments: book,
                    );
                  },
                  child: CustomFavoriteItem(
                    isSelected: isSelected,
                    book: book,
                  ),
                ),
              );
            },
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
