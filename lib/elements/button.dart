import 'package:flutter/material.dart';
import 'package:matrimony/configuration/front_end.dart';

class CircularButton extends StatelessWidget {
  CircularButton({
    required this.text,
    required this.color,
    required this.contcolor,
    required this.ontap,
    required this.bordercolor,
    Key? key,
  }) : super(key: key);
  String text;
  Color color;
  Color contcolor;
  Color bordercolor;
  VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 57,
        width: MediaQuery.of(context).size.width * 1,
        decoration: BoxDecoration(
          color: contcolor,
          borderRadius: BorderRadius.circular(28),
          border: Border.all(color: bordercolor),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: CustomStyle.Montserratlogin.copyWith(color: color),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
