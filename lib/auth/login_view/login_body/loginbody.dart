import 'package:flutter/material.dart';
import 'package:matrimony/configuration/front_end.dart';
import 'package:matrimony/elements/bottombar.dart';
import 'package:matrimony/elements/button.dart';
import 'package:matrimony/elements/inputtextfeild.dart';
import 'package:matrimony/addphoto_view/addphoto.screen.dart';
import 'package:matrimony/phoneverify_view/phoneverify.dart';

class Login_body extends StatefulWidget {
  const Login_body({Key? key}) : super(key: key);

  @override
  State<Login_body> createState() => _Login_bodyState();
}

class _Login_bodyState extends State<Login_body> {
  @override
  Widget build(BuildContext context) {
    final emailTextEditController = new TextEditingController();
    final passwordTextEditController = new TextEditingController();
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(color: Colors.white),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  color: FrontEndConfigs.kprimerycolor,
                  shape: BoxShape.circle,
                ),
                child: Center(
                    child: Text(
                  "Logo",
                  style: CustomStyle.Montserrat,
                )),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            TextFromField(
              obscr: false,
              HintText: 'Email',
              textControler: emailTextEditController,
            ),
            SizedBox(
              height: 20,
            ),
            TextFromField(
              obscr: true,
              HintText: 'Password',
              textControler: passwordTextEditController,
            ),
            SizedBox(
              height: 45,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CircularButton(
                text: 'Login',
                contcolor: FrontEndConfigs.kprimerycolor,
                ontap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BottomBar()));
                },
                color: Colors.white,
                bordercolor: FrontEndConfigs.kprimerycolor,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Phone_Verify()));
                    },
                    child: Text(
                      "Log in via OTP",
                      style: CustomStyle.Montserrattextbutton,
                    )),
                Container(
                  height: 30,
                  width: 1,
                  color: Color(0xff375F90),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot Password?",
                      style: CustomStyle.Montserrattextbutton,
                    )),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: CircularButton(
                text: 'New User? Register free',
                contcolor: FrontEndConfigs.kWhiteColor,
                ontap: () {},
                color: Color(0xff375F90),
                bordercolor: FrontEndConfigs.kprimerycolor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
