import 'package:flutter/material.dart';
import 'package:library_system4/core/utils/app_color.dart';
import 'package:library_system4/core/utils/styles.dart';
import '../../../../home/data/models/BookModel.dart';

class CustomFavoriteItem extends StatelessWidget {
  final bool isSelected;
  final BookModel book;
  final VoidCallback? onRemove;

  const CustomFavoriteItem({
    super.key,
    required this.book,
    this.isSelected = false,
    this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 16, top: 22, bottom: 22),
          decoration: BoxDecoration(
            color: const Color(0xff1c2232),
            borderRadius: BorderRadius.circular(20),
            border: isSelected
                ? Border.all(color: AppColors.buttonColor, width: 2)
                : null,
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: book.imageUrl != null
                    ? Image.network(
                  "http://smartlibrary.runasp.net${book.imageUrl}",
                  height: 150,
                  width: 100,
                  fit: BoxFit.cover,
                )
                    : const SizedBox(
                  height: 150,
                  width: 100,
                  child: Icon(Icons.book, size: 60, color: Colors.white38),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      book.title ?? "Unknown Title",
                      style:
                      Styles.textStyleBold24.copyWith(color: Colors.white),
                    ),
                    Text(
                      book.author ?? "Unknown Author",
                      style: Styles.textStyleMedium18
                          .copyWith(color: const Color(0xff606670)),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      book.price != null ? "\$${book.price}" : "Price N/A",
                      style: Styles.textStyleBold24
                          .copyWith(color: AppColors.buttonColor),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: InkWell(
                    onTap: onRemove,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffe3000c),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 12),
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          "Remove",
                          style: Styles.textStyleSemiBold20
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),

        if (isSelected)
          Positioned(
            top: 8,
            right: 8,
            child: CircleAvatar(
              backgroundColor: AppColors.buttonColor,
              radius: 14,
              child: const Icon(Icons.check, color: Colors.black, size: 18),
            ),
          ),
      ],
    );
  }
}
