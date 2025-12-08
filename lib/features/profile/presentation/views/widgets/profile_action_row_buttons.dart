import 'package:flutter/material.dart';

import 'custom_profile_action_button.dart';

class ProfileActionsRow extends StatelessWidget {
  const ProfileActionsRow({super.key});


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomProfileActionButton(
          label: "Log Out",
          icon: Icons.logout,
          isPrimary: true,
          onTap: () {},
        ),
        const SizedBox(width: 12),
        CustomProfileActionButton(
          label: "Change Password",
          icon: Icons.lock,
          isPrimary: false,
          onTap: () {},
        ),
      ],
    );
  }
}