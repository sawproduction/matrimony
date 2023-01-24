import 'package:flutter/material.dart';
import 'package:matrimony/auth/login_view/login_screen.dart';
import 'package:matrimony/auth/onboarding.dart';
import 'package:matrimony/auth/signup.dart';
import 'package:matrimony/auth/splash_view/splashScreeen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case ('/'):
      return MaterialPageRoute(
          settings: settings, builder: (context) => const Splash_Screen());
    case ('onboarding'):
      return MaterialPageRoute(
          settings: settings, builder: (context) => const OnBoardingScreen());
    case ('signup'):
      return MaterialPageRoute(
          settings: settings, builder: (context) => SignUpScreen());
    case ('login'):
      return MaterialPageRoute(
          settings: settings, builder: (context) => Login_Screen());
    default:
      return MaterialPageRoute(
          settings: settings, builder: (context) => const Splash_Screen());
  }
}
