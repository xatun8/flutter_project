// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:onboarding_screens/core/constants/ui_datas.dart';
import 'package:onboarding_screens/core/extensions/sized_box_extension.dart';
import 'package:onboarding_screens/ui/pages/onboard/widgets/texts/title_and_description.dart';
import 'package:onboarding_screens/ui/pages/onboard/widgets/texts/title_and_text.dart';

class TextPageView extends StatelessWidget {

  const TextPageView({
    Key? key,
    required this.pageController,
    required this.pageImageController, required this.getCurrentIndeks,
  }) : super(key: key);
  final PageController pageController;
  final PageController pageImageController;
   final void Function(int) getCurrentIndeks;
   @override
   Widget build(BuildContext context) {
       return   SizedBox(
                height: 120,
                child: PageView.builder(
                  // physics: BouncingScrollPhysics(),
                  controller: pageController,
                  itemCount: UiDatas.onboardDatas.length,
                  onPageChanged: (i) {
                    pageController.jumpToPage(i);
                  getCurrentIndeks(i);
                  },
                  itemBuilder: (_, i) {
                    final item = UiDatas.onboardDatas[i];
                    return Column(
                      children: [
                        TitleText(title: item.title),
                        20.h,
                        TitleDescription(description: item.description),
                      ],
                    );
                  },
                ),
              );
  }
}
