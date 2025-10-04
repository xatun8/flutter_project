
import 'package:flutter/material.dart';
import 'package:onboarding_screens/core/constants/app_padding.dart';
import 'package:onboarding_screens/core/constants/ui_datas.dart';

class ImagePageView extends StatelessWidget {

  const ImagePageView({
    Key? key, required this.pageController, required this.pageImageController, required this.getCurrentIndeks,
    
  }) : super(key: key);
  final PageController pageController;
  final PageController pageImageController;
  final void Function(int) getCurrentIndeks;
 
   @override
   Widget build(BuildContext context) {
       return 
SizedBox(
            height: 380,
            child: PageView.builder(
              controller: pageImageController,
              itemCount: UiDatas.onboardDatas.length,
              onPageChanged: (i) {
                pageImageController.jumpToPage(i);
                getCurrentIndeks(i);
              },
              itemBuilder: (_, i) {
                final item = UiDatas.onboardDatas[i];
                return Padding(
                  padding: AppPadding.h50,
                  child: Image.asset(item.image, fit: BoxFit.contain),
                );
              },
            ),
          );
  }
}




