import 'package:flutter/widgets.dart';
import 'package:onboarding_screens/ui/pages/login/login_page.dart';
import 'package:onboarding_screens/ui/pages/onboard/onboard_pages.dart';
import 'package:onboarding_screens/ui/pages/splash/splash_page.dart';

class Pager {
  Pager._();
  static const Widget splashPager = SplashPage();
  static const Widget onboardPager = OnboardPages();
   static const Widget loginPager = LoginPage();
}
