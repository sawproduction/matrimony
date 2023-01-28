import 'package:country_codes/country_codes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:matrimony/configuration/front_end.dart';
import 'package:matrimony/elements/button.dart';
class Phone_Verify extends StatefulWidget {
  const Phone_Verify({Key? key}) : super(key: key);

  @override
  State<Phone_Verify> createState() => _Phone_VerifyState();
}

class _Phone_VerifyState extends State<Phone_Verify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              height: 140,
              color: Colors.red,

            ),
            SizedBox(
              height: 30,
            ),
            Text("Enter your mobile Number",style:TextStyle(
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: Colors.black,
            ),),
            SizedBox(
              height: 20,
            ),
            Text("You Will receive an OTP to the mobile",style:TextStyle(
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: Color(0xff797878),
            ),),
            SizedBox(
              height: 6,
            ),
            Text("number registered with your account ",style:TextStyle(
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: Color(0xff797878),
            ),),
            SizedBox(
              height: 40,
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
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CircularButton(
                text: 'Submit',
                contcolor: FrontEndConfigs.kprimerycolor,
                ontap: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => BottomBar()));
                },
                color: Colors.white,
                bordercolor: FrontEndConfigs.kprimerycolor,
              ),
            ),


          ],
        ),
      ),
    );
  }
}

