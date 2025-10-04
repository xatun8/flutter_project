import 'package:flutter/material.dart';
import 'package:onboarding_screens/core/constants/app_button_styles.dart';
import 'package:onboarding_screens/core/constants/app_colors.dart';
import 'package:onboarding_screens/core/constants/app_duractions.dart';
import 'package:onboarding_screens/core/constants/app_padding.dart';
import 'package:onboarding_screens/core/extensions/widget_state_property_all_extension.dart';
import 'package:onboarding_screens/ui/widgets/custom_button.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({
    super.key,
    required this.pageController,
    required this.pageImageController,
  });
  final PageController pageController;
  final PageController pageImageController;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.h24,
      child: CustomButton(
        onPressed: () {
          Future.wait({
            pageController.previousPage(
              duration: AppDuractions.m500,
              curve: Curves.easeIn,
            ),
            pageImageController.previousPage(
              duration: AppDuractions.m500,
              curve: Curves.easeIn,
            ),
          });
        },
        style: AppButtonStyles.primaryButtonStyle.copyWith(
          backgroundColor: AppColors.primary100.toWspAll,
          foregroundColor: AppColors.primary500.toWspAll,
        ),

        text: 'Skip',
      ),
    );
  }
}
