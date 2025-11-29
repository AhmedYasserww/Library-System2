import 'package:flutter/material.dart';
import 'package:library_system4/features/library/presentation/views/widgets/library_header_section.dart';
import 'package:library_system4/features/library/presentation/views/widgets/library_search_section.dart';
import 'package:library_system4/features/library/presentation/views/widgets/library_filter_row.dart';
import 'package:library_system4/features/library/presentation/views/widgets/custom_book_library_grid_view.dart';

class LibraryViewBody extends StatelessWidget {
  const LibraryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: const [
                SizedBox(height: 24),
                LibraryHeaderSection(),
                SizedBox(height: 24),
                LibrarySearchSection(),
                SizedBox(height: 44),
                LibraryFilterRow(),
                SizedBox(height: 8),
                Divider(color: Color(0xff929BAB)),
                SizedBox(height: 8),
              ],
            ),
          ),
        ),
        const CustomBookLibraryGridView(),
      ],
    );
  }
}
