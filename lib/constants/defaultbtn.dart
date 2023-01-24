import 'package:flutter/material.dart';
import 'package:matrimony/constants/colors.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final Function()? press;
  final EdgeInsetsGeometry? padding;
  const DefaultButton(
      {super.key, required this.text, this.press, this.padding});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return ElevatedButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(width * 0.04))),
            padding: MaterialStateProperty.all(padding),
            backgroundColor: MaterialStateProperty.all(bgred)),
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ));
  }
}
