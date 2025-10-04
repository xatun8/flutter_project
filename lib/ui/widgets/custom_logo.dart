import 'package:flutter/material.dart';
import 'package:onboarding_screens/core/constants/app_assets.dart';

class CustomLogo extends StatelessWidget {
  const CustomLogo({super.key, required this.width, required this.height});
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppAssets.splashLogo,
      width: width,
      height: height,
      // colorFilter: AppColors.primary500.toColorFilter,
    );
  }
}
