import 'package:flutter/material.dart';
import 'package:matrimony/configuration/front_end.dart';

class Splash_body extends StatelessWidget {
  const Splash_body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
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
        ],
      ),
    );
  }
}
