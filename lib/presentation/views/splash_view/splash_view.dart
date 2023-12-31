import 'dart:async';

import 'package:flutter/material.dart';
import 'package:women_safety_app/constants/app_constants.dart';
import 'package:women_safety_app/helpers.dart';
import 'package:women_safety_app/presentation/elements/custom_text.dart';

import '../onboarding/onboarding_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      NavigationHelper.push(const OnboardingView(), context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.secondaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: AppConstants.logoImage),
          const CustomText(
            text: 'TapToSafety',
            fontSize: 26,
            textColor: AppConstants.primaryColor,
            textFontWeight: FontWeight.normal,
          ),
        ],
      ),
    );
  }
}