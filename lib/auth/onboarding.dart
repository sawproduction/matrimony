import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/bg.png'), fit: BoxFit.cover),

        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 300,
              width: 500,
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(200.0),
                  topRight: Radius.circular(200.0),

                ),

                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    offset: const Offset(
                      5.0,
                      5.0,
                    ),
                    blurRadius: 30.0,
                    spreadRadius: 45.0,
                  ), //BoxShadow
                   //BoxShadow
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  Text(
                    "Your Information is safe with us\nYou can also view who can\nYour personal details",
                    textAlign: TextAlign.center,
                  ),
                  Spacer(),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () {
                          Navigator.pushNamed(context, 'signup');
                        },
                        child: Container(
                          padding: EdgeInsets.all(width * 0.02),
                          color: Colors.black,
                          child: Text(
                            "Sign Up",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () {
                          Navigator.pushNamed(context, 'login');
                        },
                        child: Container(
                          padding: EdgeInsets.all(width * 0.02),
                          color: Colors.red,
                          child: Text(
                            "Log In",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    ));
  }
}
