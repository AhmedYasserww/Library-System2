
import 'package:flutter/material.dart';
import 'package:library_system4/core/utils/styles.dart';

import '../../../../../core/utils/app_color.dart';
class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xff1c1f2a), Color(0xff111420)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Name', style: Styles.textStyleRegular14.copyWith(color: const Color(0xff8c8f97))),
                  const SizedBox(height: 4),
                  Text('Ahmed Yasser', style: Styles.textStyleBold20.copyWith(color: Colors.white)),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.edit, color: AppColors.buttonColor),
              )
            ],
          ),
          const SizedBox(height: 20),
          Text('Email', style: Styles.textStyleRegular14.copyWith(color: const Color(0xff8c8f97))),
          const SizedBox(height: 4),
          Text('ahmed@email.com', style: Styles.textStyleBold18.copyWith(color: Colors.white)),
          const SizedBox(height: 20),
          Text('Phone Number', style: Styles.textStyleRegular14.copyWith(color: const Color(0xff8c8f97))),
          const SizedBox(height: 4),
          Text('+20123456789', style: Styles.textStyleBold18.copyWith(color: Colors.white)),
        ],
      ),
    );
  }
}