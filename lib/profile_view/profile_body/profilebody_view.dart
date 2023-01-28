import 'package:flutter/material.dart';
import 'package:matrimony/configuration/front_end.dart';
import 'package:matrimony/profile_view/profile_setting.dart';
import 'package:matrimony/res.dart';
class Profile_body extends StatelessWidget {
  const Profile_body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child:Column(
            children: [
              SizedBox(
                height: 60,
              ),
          Padding(
          padding:
          const EdgeInsets.symmetric(horizontal: 20, vertical:5),
            child: Container(
              height: 120,
              color: Color(0xffEEEBEB),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage("assets/pic.png"),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Row(
                              children: [
                                Text("User Name",style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: FrontEndConfigs.black,

                                ),
                                ),

                              ],
                            ),

                            Text(
                              "MUS4505842",
                              style: CustomStyle.Montserratmedium,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Membership - ",
                                  style: CustomStyle.Montserratmedium,
                                ),
                                Text(
                                  "Free",
                                  style: TextStyle(
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15,
                                      color: Color(0xff355EC9)
                                  )
                                ),
                               SizedBox(
                                 width: 4,
                               ),
                               Container(
                                 height: 15,
                                 width: 2,
                                 color: Colors.black,
                               ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "Upgrade Now",
                                  style: TextStyle(
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: Color(0xff355EC9)
                                  )
                                ),
                              ],
                            ),
                            Container(
                              width: 230,
                              height: 5,

                              color: Color(0xffA9D7B2),
                              child: Row(
                                children: [
                                  Container(
                                    width: 180,
                                    height: 5,
                                    color: Color(0xff08A92C),

                                  ),
                                ],
                              ),
                            ),
                            Text(
                                "Your profile Score 85%",
                                style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                  color: Color(0xff08A92C),
                                )
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 230,
                              height: 5,

                              color: Colors.red.shade200,
                              child: Row(
                                children: [
                                  Container(
                                    width: 180,
                                    height: 5,
                                    color: Colors.red,

                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                    "Your  Mobile Numbers Viewed",
                                    style: TextStyle(
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13,
                                       color: Color(0xff355EC9)
                                    )
                                ),
                                Text(
                                    "30/",
                                    style: TextStyle(
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13,
                                      color: Color(0xff08A92C),
                                    )
                                ),
                                Text(
                                    "60",
                                    style: TextStyle(
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13,
                                      color: Colors.red
                                    )
                                ),
                              ],
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),



                ],
              ),
            )),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    ImageIcon(
                      AssetImage(Assets.king,),
                      color: Color(0xffF8C660,
                      ),
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    TextButton(
                      onPressed:(){},
                     child:Text("Upgrade Now",style: TextStyle(
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Color(0xffF8C660,
                      ),

                    ),
                    )
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    ImageIcon(
                      AssetImage(Assets.Vector,),
                      color: Color(0xff797878
                        ,
                      ),
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    TextButton(
                        onPressed:(){},
                        child:Text("Get Verified",style: TextStyle(
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                           color: Colors.black

                        ),
                        )
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    ImageIcon(
                      AssetImage(Assets.setting,),
                      color: Color(0xff797878
                        ,
                      ),
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    TextButton(
                        onPressed:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile_Setting_Screen()));
                        },
                        child:Text("Settings",style: TextStyle(
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                            color: Colors.black

                        ),
                        )
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    ImageIcon(
                      AssetImage(Assets.accounrmatch,),
                      color: Color(0xff797878
                        ,
                      ),
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    TextButton(
                        onPressed:(){},
                        child:Text("Matches",style: TextStyle(
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                            color: Colors.black

                        ),
                        )
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    ImageIcon(
                      AssetImage(Assets.matches,),
                      color: Color(0xff797878
                        ,
                      ),
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    TextButton(
                        onPressed:(){},
                        child:Text("Daily Matches",style: TextStyle(
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                            color: Colors.black

                        ),
                        )
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    ImageIcon(
                      AssetImage(Assets.phonebook,),
                      color: Color(0xff797878
                        ,
                      ),
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    TextButton(
                        onPressed:(){},
                        child:Text("Contact History",style: TextStyle(
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                            color: Colors.black
                        ),
                        )
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    ImageIcon(
                      AssetImage(Assets.microphone,),
                      color: Color(0xff797878
                        ,
                      ),
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    TextButton(
                        onPressed:(){},
                        child:Text("Help Center",style: TextStyle(
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                            color: Colors.black

                        ),
                        )
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    ImageIcon(
                      AssetImage(Assets.star,),
                      color: Color(0xff797878
                        ,
                      ),
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    TextButton(
                        onPressed:(){},
                        child:Text("Rate Us",style: TextStyle(
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                            color: Colors.black
                        )
                    ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [

                    TextButton(
                        onPressed:(){},
                        child:Text("Help Center",style: TextStyle(
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Colors.black

                        ),
                        )
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [

                    TextButton(
                        onPressed:(){},
                        child:Text("Privacy Policy",style: TextStyle(
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Colors.black

                        ),
                        )
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),



    );
  }
}
