import 'package:flutter/material.dart';
import 'package:matrimony/auth/onboarding.dart';
import 'package:matrimony/auth/signup.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    // case ('/'):
    //   return MaterialPageRoute(
    //       settings: settings, builder: (context) => const SplashScreen());
    case ('onboarding'):
      return MaterialPageRoute(
          settings: settings, builder: (context) => const OnBoardingScreen());
    case ('signup'):
      return MaterialPageRoute(
          settings: settings, builder: (context) => SignUpScreen());
    default:
      return MaterialPageRoute(
          settings: settings, builder: (context) => const OnBoardingScreen());
  }
}
