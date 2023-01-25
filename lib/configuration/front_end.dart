import 'package:flutter/material.dart';

class FrontEndConfigs {
  static const Color kWhiteColor = Colors.white;
  static  Color otptext = Color(0xffFF8380);
  static const Color black = Colors.black;
  static Color kprimerycolor = Color(0xffFF0600);
  static Color textcolor = Color(0xff797878);

}

class CustomStyle {
  static final Montserrat = TextStyle(
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w700,
    fontSize: 20,
    color: FrontEndConfigs.kWhiteColor,
  );
  static final Montserratlogin = TextStyle(
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w700,
    fontSize: 18,
    color: FrontEndConfigs.kWhiteColor,

  );

  static final Montserratmedium = TextStyle(
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: Colors.black38
  );
  static final Montserratsetting = TextStyle(
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w600,
      fontSize: 16,
      color: Colors.black
  );
  static final Poppinsnormal = TextStyle(
      fontFamily: "Poppins Medium",
      fontWeight: FontWeight.w500,
      fontSize: 14,
      color: Colors.black
  );
  static final Montserrattextbutton = TextStyle(
      fontFamily: "Montserrat",
      fontWeight: FontWeight.w600,
      fontSize: 20,
      color: Color(0xff375F90),
  );
}
