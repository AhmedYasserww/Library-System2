import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
class HeaderViewBody extends StatelessWidget {
  const HeaderViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Your Gateway to Universe of Stories ",style: Styles.textStyleBold30,textAlign: TextAlign.center,),
        SizedBox(height: 16,),
        Text("Borrow , Read and return. Explore thousands of titles across all genres."
            " your next Adventure is just a click away. ",style: Styles.textStyleBold18.copyWith(color: Colors.grey),textAlign: TextAlign.center,),
      ],
    );
  }
}
