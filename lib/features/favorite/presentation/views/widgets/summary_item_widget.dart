import 'package:flutter/material.dart';
import 'package:library_system4/core/utils/app_color.dart';
import 'package:library_system4/core/utils/styles.dart';
import 'package:library_system4/core/widgets/custom_button.dart';
import '../../../../home/data/models/BookModel.dart';

class SummaryItemWidget extends StatelessWidget {
  final List<int> selectedItems;
  final List<BookModel> favoriteBooks;

  const SummaryItemWidget({
    super.key,
    required this.selectedItems,
    required this.favoriteBooks,
  });

  @override
  Widget build(BuildContext context) {
    final totalAvailableCopies = favoriteBooks.fold<int>(
      0,
          (sum, book) => sum + (book.availableCopies ?? 0),
    );

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        color: Color(0xff1c2232),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8),
          Text(
            "Summary",
            style: Styles.textStyleBold18
                .copyWith(color: AppColors.buttonColor),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Text("Total Available Copies:",
                  style: Styles.textStyleBold18
                      .copyWith(color: Colors.white)),
              const Spacer(),
              Text("$totalAvailableCopies",
                  style: Styles.textStyleBold18
                      .copyWith(color: Colors.white)),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Text("Selected:",
                  style: Styles.textStyleBold18
                      .copyWith(color: Colors.white)),
              const Spacer(),
              Text("${selectedItems.length}",
                  style: Styles.textStyleBold18
                      .copyWith(color: Colors.white)),
            ],
          ),
          const SizedBox(height: 8),
          CustomButton(
            height: 44,
            text: "Borrow Selected (${selectedItems.length})",
            style: Styles.textStyleBold22.copyWith(color: Colors.black),
            onTap: () {},
            color: AppColors.buttonColor,
          ),
          const SizedBox(height: 12),
          CustomButton(
            height: 44,
            text: "Clear Wishlist",
            style: Styles.textStyleBold22,
            onTap: () {},
            color: const Color(0xff354153),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
