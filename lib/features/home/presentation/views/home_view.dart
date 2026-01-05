import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:library_system4/core/utils/app_color.dart';
import 'package:library_system4/core/widgets/custom_app_bar.dart';
import 'package:library_system4/features/home/data/repos/book_repo/book_repo_imp.dart';
import 'package:library_system4/features/home/data/repos/category_repo/category_repo_imp.dart';
import 'package:library_system4/features/home/presentation/manager/book_cubit/get_all_book_cubit.dart';
import 'package:library_system4/features/home/presentation/manager/category_cubit/get_all_category_cubit.dart';
import 'package:library_system4/features/home/presentation/views/widgets/home_view_body.dart';

import '../../../../core/service_locator/service_locator.dart';
class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const  String routeName = 'home_view';

  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => GetAllCategoryCubit(getIt.get<CategoryRepoImpl>() )..fetchCategories(),
        ),
        BlocProvider(
          create: (_) => GetAllBookCubit(getIt.get<BookRepoImpl>() )..fetchBooks(),
        ),
      ],
      child: const Scaffold(
        appBar: CustomAppBar(title: "BookWise"),
          body: HomeViewBody(),
      ),
    );
  }
}
