import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:onboarding_screens/core/constants/app_colors.dart';

class CustomLoding extends StatelessWidget {
  const CustomLoding({
    super.key,
    required this.size,
    this.color = AppColors.primary500,
  });
  final double size;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: size,
        height: size,
        child: SpinKitCircle(color: color),
      ),
    );
  }
}
