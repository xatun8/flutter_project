import 'package:flutter/material.dart';
import 'package:onboarding_screens/core/constants/app_duractions.dart';
import 'package:onboarding_screens/core/constants/app_padding.dart';
import 'package:onboarding_screens/ui/widgets/custom_button.dart';

import '../../../../../core/constants/ui_datas.dart';

class NextButton extends StatelessWidget {
  const NextButton({
    super.key,
    required this.pageController,
    required this.pageImageController,
    required this.currentIndeks,
  });
  final PageController pageController;
  final PageController pageImageController;
  final int currentIndeks;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.h24,
      child: CustomButton(
        onPressed: () {
          Future.wait({
            pageController.nextPage(
              duration: AppDuractions.m500,
              curve: Curves.easeIn,
            ),
            pageImageController.nextPage(
              duration: AppDuractions.m500,
              curve: Curves.easeIn,
            ),
          });
        },
        text: currentIndeks == UiDatas.onboardDatas.length - 1
            ? 'Finish'
            : 'Next',
      ),
    );
  }
}
