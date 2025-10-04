import 'package:flutter/material.dart';
import 'package:onboarding_screens/core/constants/app_colors.dart';
import 'package:onboarding_screens/core/constants/app_constans.dart';
import 'package:onboarding_screens/core/helpers/pager.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Light version',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.primary,
        primaryColor: AppColors.primary,
        fontFamily: AppConstans.appFontFamily,
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: AppColors.white,
        ),
      ),
      home: Pager.splashPager,
    );
  }
}
