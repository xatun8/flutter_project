import 'package:flutter/material.dart';
import 'package:onboarding_screens/core/constants/app_colors.dart';

class CustomDrag extends StatelessWidget {
  const CustomDrag({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 3,
      width: 38,
      child: ColoredBox(color: AppColors.greyscale300),
    );
  }
}
