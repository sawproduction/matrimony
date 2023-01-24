import 'package:flutter/material.dart';
import 'package:matrimony/configuration/front_end.dart';

class TextFromField extends StatelessWidget {
  String HintText;
  bool obscr;
  var textControler;

  TextFromField(
      {required this.HintText,
      required this.obscr,
      required this.textControler});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 70,
        width: double.infinity,
        child: TextField(
          obscureText: obscr,
          controller: textControler,
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
            hintText: HintText,
          ),
        ),
      ),
    );
  }
}
