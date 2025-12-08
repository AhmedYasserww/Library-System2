import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(title, style: Styles.textStyleBold20.copyWith(color: Colors.white));
  }
}
