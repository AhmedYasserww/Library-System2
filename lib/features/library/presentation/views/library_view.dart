import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:library_system4/core/widgets/custom_app_bar.dart';
import 'package:library_system4/features/library/presentation/views/widgets/library_view_body.dart';

import '../../../../core/service_locator/service_locator.dart';
import '../../../home/data/repos/book_repo/book_repo_imp.dart';
import '../../../home/presentation/manager/book_cubit/get_all_book_cubit.dart';
class LibraryView extends StatelessWidget {
  const LibraryView({super.key});
  static const String routeName = 'library_view';

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (_) => GetAllBookCubit(getIt.get<BookRepoImpl>() )..fetchBooks(),
      child: const Scaffold(
        appBar: CustomAppBar(title: "BookWise"),
        body: LibraryViewBody(),
      ),
    );
  }
}
