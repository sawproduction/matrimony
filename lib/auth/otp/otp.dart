import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:matrimony/configuration/front_end.dart';
import 'package:matrimony/elements/button.dart';
class OTP_Screen extends StatefulWidget {
  const OTP_Screen({Key? key}) : super(key: key);

  @override
  State<OTP_Screen> createState() => _OTP_ScreenState();
}

class _OTP_ScreenState extends State<OTP_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,

          child: Column(
            children: [
              SizedBox(
                height: 70,
              ),
              Container(
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
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "Enter OTP which we have send on this number",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: FrontEndConfigs.kprimerycolor,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "+923266612045",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: FrontEndConfigs.kprimerycolor,
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OtpTextField(
                    margin:const EdgeInsets.symmetric(horizontal: 20),
                    numberOfFields: 4,
                    fieldWidth: 60,
                    disabledBorderColor: FrontEndConfigs.otptext,
                    fillColor: FrontEndConfigs.otptext,
                    filled: true,
                    focusedBorderColor: FrontEndConfigs.otptext,
                    showFieldAsBox: true,
                    //set to true to show as box or false to show as dash
                    textStyle:TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white),
                    onCodeChanged: (String code) {
                      //handle validation or checks here
                    },
                    onSubmit: (String verificationCode) async{
                      print(verificationCode);


                    }, // end onSubmit
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed:(){},
                      child: Text(
                        "Send Again?",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff274871
                          )
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 80,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CircularButton(
                  text: 'Confirm  >',
                  contcolor: FrontEndConfigs.kprimerycolor,
                  ontap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => Add_Photo_screen()));
                  },
                  color: Colors.white,
                  bordercolor: FrontEndConfigs.kprimerycolor,
                ),
              ),

              SizedBox(
                height: 20,
              ),

              Text(
                "00:58",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 30,
              ),

              Text(
                "You did't get code? Resend Code",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }
}
