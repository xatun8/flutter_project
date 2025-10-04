import 'package:flutter/material.dart';
import 'package:onboarding_screens/core/constants/app_duractions.dart';
import 'package:onboarding_screens/core/extensions/sized_box_extension.dart';
import 'package:onboarding_screens/ui/pages/onboard/widgets/buttons/next_button.dart';
import 'package:onboarding_screens/ui/pages/onboard/widgets/buttons/skip_button.dart';

class AnimatedButton extends StatelessWidget {

  const AnimatedButton({ super.key, required this.pageController, required this.pageImageController, required this.currentIndeks });
 final PageController pageController;
  final PageController pageImageController;
  final int currentIndeks;
   @override
   Widget build(BuildContext context) {
       return AnimatedCrossFade(
                firstChild: NextButton(
                  pageController: pageController,
                  pageImageController: pageImageController,
                  currentIndeks: currentIndeks,
                ),
                secondChild: Column(
                  children: [
                    NextButton(
                      pageController: pageController,
                      pageImageController: pageImageController,
                      currentIndeks: currentIndeks,
                    ),

                    12.h,

                    SkipButton(
                      pageController: pageController,
                      pageImageController: pageImageController,
                    ),
                  ],
                ),
                crossFadeState: currentIndeks == 0
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: AppDuractions.m500,
              );
  }
}