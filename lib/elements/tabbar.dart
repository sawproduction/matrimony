import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matrimony/configuration/front_end.dart';
import 'package:matrimony/justnow_view/justnow.dart';
import 'package:matrimony/res.dart';
import 'package:matrimony/upgarde_view/upgradescreen.dart';
class Tabbar_Screen extends StatelessWidget {
  const Tabbar_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(

        length: 4,
        child: SafeArea(
          child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(150.0),
              child: AppBar(
                toolbarHeight: 100,

                backgroundColor: Colors.red,
                title: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 60,top: 3),
                                child: Container(
                                  height: 28,
                                  width: 90,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text("PRIME",style: TextStyle(color: Colors.black,fontSize: 15),)
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 33,
                                width: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xffC61A1A),
                                      Color(0xff010101),
                                    ],
                                  )


                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text("FREE",style: TextStyle(color: Colors.white,fontSize: 15),)
                                  ],
                                ),

                              ),

                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("MATCHES"),
                          Container(
                            height: 30,
                            width: 120,

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(Icons.notifications_none,size: 20,),

                                IconButton(onPressed: (){}, icon:ImageIcon(AssetImage(Assets.microphone),size: 20,))
                              ],
                            ),
                          )

                        ],
                      ),
                    ),
                  ],
                ),
                bottom:TabBar(
                indicatorColor: Colors.white,
                labelStyle: TextStyle(fontSize: 10,fontWeight: FontWeight.w800),

                tabs: [
                  Tab(text: "JUST JOINED"),
                  Tab(text: "MATCHES"),
                  Tab(text: "RESENT VIEWS"),
                  Tab(text: "FAVOURITE"),
                ],
              ),
              ),
            ),
            body: TabBarView(
              children: [
                Justnow_Screen(),
                Justnow_Screen(),
                Justnow_Screen(),
                Justnow_Screen(),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Search_Tabbar_Screen extends StatelessWidget {
  const Search_Tabbar_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(

        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: Row(

              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back,color: Colors.white,)),
                SizedBox(
                  width: 20,
                ),
                Text("Mailbox"),


              ],
            ),

            bottom:PreferredSize(
              preferredSize:  Size.fromHeight(60.0),
              child: Material(
                color: Colors.white,
                elevation: 8,
                child: TabBar(
                  indicatorColor: Colors.red,
                  labelColor: Colors.black,
                  labelStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w700),

                  tabs: [
                    Tab(text: "PENDING"),
                    Tab(text: "ACCEPTED"),
                    Tab(text: "DECLINED"),
                    Tab(text: "REPLIED"),
                  ],
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                height:200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ImageIcon(AssetImage('assets/empty.png'),color: Colors.grey,size: 100,),
                  ],
                ),
              ),
              Container(
                height:200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ImageIcon(AssetImage('assets/empty.png'),color: Colors.grey,size: 100,),
                  ],
                ),
              ),
              Container(
                height:200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ImageIcon(AssetImage('assets/empty.png'),color: Colors.grey,size: 100,),
                  ],
                ),
              ),
              Container(
                height:200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ImageIcon(AssetImage('assets/empty.png'),color: Colors.grey,size: 100,),
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

class upgradetabbar extends StatelessWidget {
  const upgradetabbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(

        length: 2,
        child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              toolbarHeight: 100,
              backgroundColor: Colors.red,
              title:  Row(
                children: [
                  Text("UPGRADE"),

                ],
              ),
              bottom: PreferredSize(
                preferredSize:  Size.fromHeight(20.0),
                child:Material(
                  color: Colors.white,
                  elevation: 8,
                  child: TabBar(
                    indicatorColor: Colors.red,

                    labelStyle: CustomStyle.Montserratsetting,
                    labelColor: Colors.black,


                    tabs: [
                      Tab(text: "Prime Packages",),
                      Tab(text: "Regular Packages"),

                    ],
                  ),
                ),
              ),
            ),
            body: TabBarView(
              children: [
                Upgrade_Screen(),
                Upgrade_Screen(),


              ],
            ),
          ),
        ),
      ),
    );
  }
}




