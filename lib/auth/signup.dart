import 'package:flutter/material.dart';
import 'package:matrimony/auth/otp/otp.dart';
import 'package:matrimony/constants/colors.dart';
import 'package:matrimony/constants/defaultbtn.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  List options = ["Self", "Parent", "Sibling", "Relative", "Friend"];
  int select_option = 0;
  List genders = ["Male", "Female"];
  int curr_gender = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: bgred,
          automaticallyImplyLeading: false,
          title: Text("CREATE ACCOUNT"),
          actions: [
            OutlinedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white, width: 1)))),
                onPressed: () {},
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                )),
            SizedBox()
          ]),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Find Your Suitable Match"),
              SizedBox(height: height * 0.01),
              Text("Profile Created By"),
              Text("Select who is creating profile"),
              SizedBox(height: height * 0.01),
              Wrap(
                  children: List.generate(options.length, (index) {
                return GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    setState(() {
                      select_option = index;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.all(width * 0.03),
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width * 0.04),
                      color: select_option == index ? bgred : chipbg,
                    ),
                    child: Text(
                      options[index],
                      style: TextStyle(
                          color: select_option == index
                              ? Colors.white
                              : Color(0xff797878)),
                    ),
                  ),
                );
              }).toList()),
              Text("Gender"),
              Text("Gender of bride/groom"),
              Wrap(
                  children: List.generate(genders.length, (index) {
                return GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    setState(() {
                      select_option = index;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.all(width * 0.03),
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width * 0.04),
                      color: curr_gender == index ? bgred : chipbg,
                    ),
                    child: Text(
                      genders[index],
                      style: TextStyle(
                          color: curr_gender == index
                              ? Colors.white
                              : Color(0xff797878)),
                    ),
                  ),
                );
              }).toList()),
              SizedBox(height: height * 0.01),
              TextField(
                  decoration: InputDecoration(
                      hintText: "Name",
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder())),
              Center(
                child: DefaultButton(
                  press: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>OTP_Screen()));
                  },
                    padding: EdgeInsets.symmetric(
                        horizontal: width * 0.35, vertical: height * 0.01),
                    text: "Continue"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
