import 'dart:async';

import 'package:flutter/material.dart';
import 'package:matrimony/auth/login_view/login_screen.dart';
import 'package:matrimony/auth/splash_view/splashbody/splash.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    // TODO: implement initState

    screenLoader();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Splash_body(),
    );
  }

  void screenLoader() async {
    Timer(const Duration(seconds: 1), () {
      Navigator.pushNamed(context, 'onboarding');
    });
  }
}
