import 'package:flutter/material.dart';

import 'package:onboarding_screens/core/constants/app_colors.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: AppColors.black,
      ),
    );
  }
}
