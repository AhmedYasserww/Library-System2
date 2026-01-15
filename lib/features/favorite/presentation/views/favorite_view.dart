import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:library_system4/core/utils/app_color.dart';
import 'package:library_system4/core/utils/styles.dart';
import 'package:library_system4/core/widgets/custom_app_bar.dart';
import 'package:library_system4/features/favorite/data/repos/favorite_book_repo_imp.dart';
import 'package:library_system4/features/favorite/presentation/manager/favorite_book_cubit/get_favorite_book_cubit.dart';
import 'package:library_system4/features/favorite/presentation/views/widgets/favorite_view_body.dart';

import '../../../../core/service_locator/service_locator.dart';
class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});
  static const String routeName = 'favorite_view';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => GetFavoriteBookCubit(getIt.get<FavoriteBookRepoImpl>() )..fetchFavorites(),
      child: Scaffold(
        appBar: CustomAppBar(title: "My Wishlist 🧡",style: Styles.textStyleBold24.copyWith(color: AppColors.buttonColor),),
        body: const FavoriteViewBody(),
      ),
    );
  }
}
