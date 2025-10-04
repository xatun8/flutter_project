import 'package:flutter/material.dart';
import 'package:onboarding_screens/core/constants/app_duractions.dart';
import 'package:onboarding_screens/core/helpers/pager.dart';
import 'package:onboarding_screens/ui/widgets/custom_loding.dart';
import 'package:onboarding_screens/ui/widgets/custom_logo.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    _voidSplash();
    super.initState();
  }

  void _voidSplash() async {
    //then-ugurlu olanda diger sehifeye oturur
    await Future.delayed(AppDuractions.s2).whenComplete(() {
      if (!mounted) return;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => Pager.onboardPager),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          Center(child: CustomLogo(width: 346, height: 334)),
          Positioned(
            bottom: 80,
            right: 0,
            left: 0,
            child: CustomLoding(size: 60),
          ),
        ],
      ),
    );
  }
}
