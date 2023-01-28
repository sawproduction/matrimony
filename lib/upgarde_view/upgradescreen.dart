import 'package:flutter/material.dart';
import 'package:matrimony/configuration/front_end.dart';
import 'package:matrimony/elements/button.dart';
import 'package:matrimony/res.dart';

class Upgrade_Screen extends StatefulWidget {
  const Upgrade_Screen({Key? key}) : super(key: key);

  @override
  State<Upgrade_Screen> createState() => _Upgrade_ScreenState();
}

class _Upgrade_ScreenState extends State<Upgrade_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        color: Color(0xffCCC7C7),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 35,
                        width: 130,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.red),
                            color: Colors.redAccent.shade100,
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "3 months",
                              style: CustomStyle.Montserratsetting,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "STARTS PKR 44.3/DAY",
                        style: TextStyle(
                            fontFamily: "Poppins Medium",
                            fontWeight: FontWeight.w500,
                            fontSize: 10,
                            color: Colors.red),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    children: [
                      Container(
                        height: 35,
                        width: 130,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.red),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "6 months",
                              style: CustomStyle.Montserratsetting,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "STARTS PKR 44.3/DAY",
                        style: TextStyle(
                            fontFamily: "Poppins Medium",
                            fontWeight: FontWeight.w500,
                            fontSize: 10,
                            color: Colors.red),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    children: [
                      Container(
                        height: 35,
                        width: 130,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.red),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "1 year",
                              style: CustomStyle.Montserratsetting,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "STARTS PKR 44.3/DAY",
                        style: TextStyle(
                            fontFamily: "Poppins Medium",
                            fontWeight: FontWeight.w500,
                            fontSize: 10,
                            color: Colors.red),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 260,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Container(
                          height: 250,
                          width: 260,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Gold",
                                      style: CustomStyle.Montserratsetting,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Column(
                                        children: [
                                          Text(
                                            "PKR 3,990",
                                            style: CustomStyle.Montserratsetting,
                                          ),
                                          Text(
                                            "PKR 44.3 / Day",
                                            style: TextStyle(
                                                fontFamily: "Poppins Medium",
                                                fontWeight: FontWeight.w500,
                                                fontSize: 11,
                                                color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.email,
                                      color: Color(0xff797878),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Send unlimited messages and\nchat online*",
                                      style: TextStyle(
                                          fontFamily: "Poppins Medium",
                                          fontWeight: FontWeight.w600,
                                          fontSize: 11,
                                          color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: [
                                    Icon(Icons.phone_android_sharp,
                                        color: Color(0xff797878)),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "View 60 verified mobile\nnumbers*",
                                      style: TextStyle(
                                          fontFamily: "Poppins Medium",
                                          fontWeight: FontWeight.w600,
                                          fontSize: 11,
                                          color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              Divider(
                                thickness: 1,
                                color: Color(0xff797878),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Total",
                                      style: CustomStyle.Montserratsetting,
                                    ),
                                    Text(
                                      "PKR 3,990",
                                      style: CustomStyle.Montserratsetting,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: SizedBox(

                                  height: 35,
                                  child: CircularButton(
                                    bordercolor: Color(0xff375F90),
                                    contcolor: Color(0xff375F90),
                                    text: 'Pay Now',
                                    color: Colors.white,
                                    ontap: () {},
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      );
                    }
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(Assets.badge),
                    fit: BoxFit.cover
                  )
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Why Premium membership?",
                style: CustomStyle.Montserratsetting,
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.red,
                          child: ImageIcon(AssetImage(Assets.phone),color: Colors.white,),
                        ),
                        Text('Talk to matches\n  directly',style: CustomStyle.Poppinsnormals,),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.red,
                          child: ImageIcon(AssetImage(Assets.details),color: Colors.white,),
                        ),
                        Text('Get complete\nprofile details',style: CustomStyle.Poppinsnormals,),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.red,
                          child: ImageIcon(AssetImage(Assets.visible),color: Colors.white,),
                        ),
                        Text('Enhanced\nprofile visibility',style: CustomStyle.Poppinsnormals,),
                      ],
                    ),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.red,
                          child: ImageIcon(AssetImage(Assets.Group),color: Colors.white,),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text('profile visibility\nresponses',style: CustomStyle.Poppinsnormals,),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
