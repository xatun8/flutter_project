import 'package:flutter/material.dart';
import 'package:onboarding_screens/core/constants/app_colors.dart';
import 'package:onboarding_screens/core/constants/app_radius.dart'
    show AppRadius;
import 'package:onboarding_screens/core/extensions/widget_state_property_all_extension.dart';

class AppButtonStyles {
  static final primaryButtonStyle = ButtonStyle(
    shape: (const RoundedRectangleBorder(
      borderRadius: AppRadius.a100,
    )).toWspAll,
    backgroundColor: AppColors.primary500.toWspAll,
    foregroundColor: AppColors.white.toWspAll,
    minimumSize: Size(double.infinity, 55).toWspAll,
  );
}
