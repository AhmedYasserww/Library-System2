import 'package:flutter/material.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/styles.dart';

class CustomProfileActionButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final VoidCallback onTap;
  final bool isPrimary;


  const CustomProfileActionButton({
    super.key,
    required this.label,
    required this.icon,
    required this.onTap,
    this.isPrimary = false,
  });


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(14),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 14),
          decoration: BoxDecoration(
            color: isPrimary ? AppColors.buttonColor : Colors.transparent,
            borderRadius: BorderRadius.circular(14),
            border: isPrimary
                ? null
                : Border.all(color: const Color(0xff2a2f3a), width: 1.2),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: isPrimary ? Colors.black : const Color(0xff9aa0a8)),
              const SizedBox(width: 8),
              Text(
                label,
                style: (isPrimary
                    ? Styles.textStyleSemiBold16.copyWith(color: Colors.black)
                    : Styles.textStyleRegular14.copyWith(color: const Color(0xff9aa0a8))),
              )
            ],
          ),
        ),
      ),
    );
  }
}