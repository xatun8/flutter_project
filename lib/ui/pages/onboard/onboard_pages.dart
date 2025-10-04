import 'package:flutter/material.dart';
import 'package:onboarding_screens/ui/pages/onboard/widgets/buttons/animated_button.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_padding.dart';
import '../../../core/constants/app_radius.dart';
import '../../../core/extensions/sized_box_extension.dart';
import 'widgets/buttons/exit_button.dart';
import 'widgets/data_list.dart';
import 'widgets/views/image_page_view.dart';
import 'widgets/views/text_page_view.dart';
import '../../widgets/custom_drag.dart';

class OnboardPages extends StatefulWidget {
  const OnboardPages({super.key});

  @override
  State<OnboardPages> createState() => _OnboardPagesState();
}

class _OnboardPagesState extends State<OnboardPages> {
  late final PageController _pageController;
  late final PageController _pageImageController;
  int currentIndeks = 0;
  // int _currentIndeks = 0;
  // void _onPageChanged(int i) {
  //   _currentIndeks = i;
  //   _pageController.jumpToPage(i);
  //   setState(() {});
  // }
  void _getCurrentPage(int i) {
    currentIndeks = i;
    setState(() {});
  }

  @override
  void initState() {
    _pageController = PageController();
    _pageImageController = PageController();
    _pageController.addListener(() {
      // log('xxx' as num);
    });
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _pageImageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          10.h,
          Align(alignment: Alignment.bottomRight, child: const ExitButton()),
          // 20.h,
          ImagePageView(
            pageController: _pageController,
            pageImageController: _pageImageController,
            getCurrentIndeks: _getCurrentPage,
          ),
        ],
      ),
      bottomSheet: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: AppRadius.vT40,
          color: AppColors.white,
          border: Border.all(color: AppColors.greyscale100),
        ),
        child: Padding(
          padding: AppPadding.h24,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              8.h,
              const CustomDrag(),
              40.h,

              TextPageView(
                pageController: _pageController,
                pageImageController: _pageImageController,
                getCurrentIndeks: _getCurrentPage,
              ),
              40.h,
              DataList(currentIndeks: currentIndeks),
              40.h,
              AnimatedButton(
                pageController: _pageController,
                pageImageController: _pageImageController,
                currentIndeks: currentIndeks,
              ),
              40.h,
            ],
          ),
        ),
      ),
    );
  }
}
