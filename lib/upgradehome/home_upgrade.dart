import 'package:flutter/material.dart';
import 'package:matrimony/configuration/front_end.dart';
import 'package:matrimony/res.dart';
class Upgrade_Home_Screen extends StatefulWidget {
  const Upgrade_Home_Screen({Key? key}) : super(key: key);

  @override
  State<Upgrade_Home_Screen> createState() => _Upgrade_Home_ScreenState();
}

class _Upgrade_Home_ScreenState extends State<Upgrade_Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffCCC7C7),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "3 New members who match",
                          style: CustomStyle.Montserratsetting,
                        ),
                        Text(
                          "your profile information",
                          style: CustomStyle.Montserratsetting,
                        ),
                      ],
                    ),
                    Container(
                      height: 35,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(color: Colors.red)),
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: ImageIcon(AssetImage(Assets.edit),
                                color: Color(0xff375F90),
                              )),
                          Text(
                              "Edit",
                              style: TextStyle(
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                color: Color(0xff375F90),
                              )
                          ),

                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Wrap(
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 5),
                          child: Container(
                            height: 120,
                            color: Colors.white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // Row(children: [
                                //   IconButton(onPressed:(){},)
                                // ],),
                                Padding(
                                  padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 30,
                                        backgroundImage:
                                        AssetImage("assets/pic.png"),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "MUS394028",
                                            style: CustomStyle.Montserratmedium,
                                          ),
                                          Text(
                                            "Anjela johnson",
                                            style: TextStyle(
                                              fontFamily: "Montserrat",
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16,
                                              color: FrontEndConfigs.black,
                                            ),
                                          ),
                                          Text(
                                            "23,yrs 5fit 4in/162cm, Usa",
                                            style: CustomStyle.Montserratmedium,
                                          ),
                                          Text(
                                            "/NCR india not working, Seploma",
                                            style: CustomStyle.Montserratmedium,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 1,
                                  width: double.infinity,
                                  color: Colors.grey.shade200,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 2),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 20,
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                              size: 17,
                                            ),
                                            Text(
                                              "Shortlist",
                                              style: TextStyle(
                                                fontFamily: "Montserrat",
                                                fontWeight: FontWeight.w600,
                                                fontSize: 13,
                                                color: FrontEndConfigs.black,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: 20,
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.messenger,
                                              color: Colors.grey,
                                              size: 17,
                                            ),
                                            Text(
                                              "4 days ago",
                                              style: TextStyle(
                                                fontFamily: "Montserrat",
                                                fontWeight: FontWeight.w400,
                                                fontSize: 15,
                                                color: Colors.grey,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: 20,
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.check_circle,
                                              color: Color(0xff1F3A58),
                                              size: 17,
                                            ),
                                            Text(
                                              "Send interest",
                                              style: TextStyle(
                                                fontFamily: "Montserrat",
                                                fontWeight: FontWeight.w400,
                                                fontSize: 15,
                                                color: Colors.grey,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ));
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

