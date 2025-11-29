import 'package:flutter/material.dart';
import 'package:library_system4/core/widgets/custom_app_bar.dart';
import 'package:library_system4/features/library/presentation/views/widgets/library_view_body.dart';
class LibraryView extends StatelessWidget {
  const LibraryView({super.key});
  static const String routeName = 'library_view';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: "BookWise"),
      body: LibraryViewBody(),
    );
  }
}
