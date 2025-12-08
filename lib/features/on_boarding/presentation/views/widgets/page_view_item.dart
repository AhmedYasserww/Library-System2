import 'package:flutter/material.dart';
import 'package:library_system4/core/utils/styles.dart';
class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
  });
  final String title;
  final String subtitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.44,
          child: Center(
            child: Image.asset(
                        image,
              fit: BoxFit.fill,
                      ),
          ),
        ),
        const SizedBox(height: 30,),
        Text(
          title,
          style: Styles.textStyleSemiBold20
        ),
        const SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37),
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
            style:  Styles.textStyleMedium14
          ),
        ),
      ],
    );
  }
}
