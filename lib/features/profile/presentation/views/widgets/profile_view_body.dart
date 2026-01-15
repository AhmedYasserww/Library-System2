import 'package:flutter/material.dart';
import 'package:library_system4/core/utils/app_color.dart';
import 'package:library_system4/core/utils/styles.dart';
import 'package:library_system4/features/profile/presentation/views/widgets/profile_action_row_buttons.dart';
import 'package:library_system4/features/profile/presentation/views/widgets/profile_header.dart';
import 'package:library_system4/features/profile/presentation/views/widgets/section_title.dart';
import 'favorite_list_widget.dart';
class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          ProfileHeader(),
          SizedBox(height: 24),
          ProfileActionsRow(),
          SizedBox(height: 28),
          SectionTitle(title: 'Borrowed Books'),
          SizedBox(height: 12),
         // BorrowedBooksList(),
          SizedBox(height: 22),
          SectionTitle(title: 'Favorites'),
          SizedBox(height: 12),
      //    FavoritesList(),
        ],
      ),
    );
  }
}

