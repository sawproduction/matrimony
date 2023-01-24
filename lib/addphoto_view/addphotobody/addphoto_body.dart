import 'package:flutter/material.dart';
import 'package:matrimony/configuration/front_end.dart';
import 'package:matrimony/elements/button.dart';
import 'package:matrimony/addphoto_view/addphoto.screen.dart';

class Add_photo_body extends StatelessWidget {
  const Add_photo_body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          Container(
            height: 127,
            width: double.infinity,
            color: FrontEndConfigs.kprimerycolor,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Add Photo",
                    style: CustomStyle.Montserratlogin,
                  ),
                  Text(
                    "Step 3 /3",
                    style: CustomStyle.Montserratlogin,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Get noticed by more members!",
            style: TextStyle(
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w700,
              fontSize: 18,
              color: FrontEndConfigs.black,
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            "Add photo now",
            style: TextStyle(
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w700,
              fontSize: 18,
              color: FrontEndConfigs.black,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70),
            child: CircularButton(
              text: 'Uplod From Mobile',
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70),
            child: CircularButton(
              text: 'Take a Picture',
              contcolor: FrontEndConfigs.kWhiteColor,
              ontap: () {},
              color: Color(0xff375F90),
              bordercolor: FrontEndConfigs.kprimerycolor,
            ),
          ),
        ],
      ),
    );
  }
}
