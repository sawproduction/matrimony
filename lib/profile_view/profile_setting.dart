import 'package:flutter/material.dart';
import 'package:matrimony/configuration/front_end.dart';

class Profile_Setting_Screen extends StatefulWidget {
  const Profile_Setting_Screen({Key? key}) : super(key: key);

  @override
  State<Profile_Setting_Screen> createState() => _Profile_Setting_ScreenState();
}

class _Profile_Setting_ScreenState extends State<Profile_Setting_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          children: [
            Container(
              height: 100,
              color: Colors.red,
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back_rounded,
                          color: Colors.white,
                        )),
                    Text(
                      "SETTINGS",
                      style: CustomStyle.Montserrat,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              onTap: (){},
              title: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Edit Profile ",
                      style: CustomStyle.Montserratsetting,
                    ),
                    ImageIcon(
                      AssetImage('assets/edit.png'),
                      color: Color(0xff375F90),
                    )
                  ],
                ),
              ),
            ),
            ListTile(
              onTap: (){},
              title: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Edit Phone Number",
                      style: CustomStyle.Montserratsetting,
                    ),
                    ImageIcon(
                      AssetImage('assets/edit.png'),
                      color: Color(0xff375F90),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              onTap: (){},
              title: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Change Plan",
                      style: CustomStyle.Montserratsetting,
                    ),
                    ImageIcon(
                      AssetImage('assets/king.png'),
                      color: Colors.amber,
                    )
                  ],
                ),
              ),
            ),
            ListTile(
              onTap: (){},
              title: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Change Name",
                      style: CustomStyle.Montserratsetting,
                    ),
                    ImageIcon(
                      AssetImage('assets/edit.png'),
                      color: Color(0xff375F90),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
