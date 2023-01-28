import 'package:flutter/material.dart';
import 'package:matrimony/auth/creataccount/createaccount.dart';
import 'package:matrimony/auth/otp/otp.dart';
import 'package:matrimony/configuration/front_end.dart';
import 'package:matrimony/constants/colors.dart';
import 'package:matrimony/constants/defaultbtn.dart';
import 'package:matrimony/elements/inputtextfeild.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController emailTextEditController = TextEditingController();
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
              Text("Find Your Suitable Match",style:CustomStyle.Montserratsetting,),
              SizedBox(height: height * 0.01),
              Text("Profile Created By",style:CustomStyle.Montserratsetting),
              SizedBox(
                height: 5,
              ),
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
              Text("Gender of bride/groom",style: TextStyle(
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Colors.grey,
              )),
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
              TextFromField(
                obscr: false,
                HintText: 'Name',
                textControler: emailTextEditController,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text("Enter the name of bride/groom"),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 70,
                  width: double.infinity,
                  child: TextField(
                    obscureText:false,
                    controller: emailTextEditController,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: FrontEndConfigs.textcolor, width: 1.0),
                        borderRadius: BorderRadius.circular(8.0),
                      ),

                      fillColor: Colors.white,
                      filled: true,

                      //labelStyle: TextStyle(color: CustomTheme.primaryColor),
                      hintStyle: CustomStyle.Poppinsnormal,
                      hintText: "Date of Birth",
                      suffixIcon: Icon(Icons.calendar_today_sharp)
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children:[
                    Text("Enter the Date of Birth of bride/groom"),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              TextFromField(
                obscr: false,
                HintText: 'Email',
                textControler: emailTextEditController,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text("This wii be used to send all communications"),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 70,
                  width: double.infinity,
                  child: TextField(
                    obscureText:false,
                    controller: emailTextEditController,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: FrontEndConfigs.textcolor, width: 1.0),
                          borderRadius: BorderRadius.circular(8.0),
                        ),

                        fillColor: Colors.white,
                        filled: true,

                        //labelStyle: TextStyle(color: CustomTheme.primaryColor),
                        hintStyle: CustomStyle.Poppinsnormal,
                        hintText: "Set Password",
                        suffixIcon: Icon(Icons.visibility),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text("Enter a password to keep your account secure"),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Container(
                        height: 50,
                        width: 58,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(4)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Row(
                            children: [
                              Text(
                                  '+92'
                              ),
                              Icon(Icons.arrow_forward,color: Colors.black,size: 20,)
                            ],
                          ),
                        )
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        child: TextField(
                          obscureText: false,
                          keyboardType: TextInputType.number,

                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: FrontEndConfigs.textcolor, width: 1.0),
                              borderRadius: BorderRadius.circular(4.0),
                            ),

                            fillColor: Colors.white,
                            filled: true,

                            //labelStyle: TextStyle(color: CustomTheme.primaryColor),
                            hintStyle: CustomStyle.Poppinsnormal,
                            hintText:"311987890",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text("Select mother tongue to find the one who speaks your "),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              TextFromField(
                obscr: false,
                HintText: 'Mother tongue',
                textControler: emailTextEditController,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text("Select mother tongue to find the one who speaks your "),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              TextFromField(
                obscr: false,
                HintText: 'Select',
                textControler: emailTextEditController,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text("Select sect to find compatible matches "),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),

              Center(
                child: DefaultButton(
                  press: (){
                    //Navigator.push(context, MaterialPageRoute(builder: (context)=>OTP_Screen()));
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Create_Account_Screen()));
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
