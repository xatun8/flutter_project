import 'package:flutter/material.dart';
import 'package:onboarding_screens/core/constants/app_colors.dart';

class TitleDescription extends StatelessWidget {
  const TitleDescription({super.key, required this.description});
  final String description;
  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppColors.black,
        letterSpacing: 1.2,
      ),
    );
  }
}
