import 'package:flutter/material.dart';
import 'package:matrimony/justnow_view/justnow.dart';
class Tabbar_Screen extends StatelessWidget {
  const Tabbar_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(

        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: TabBar(
              indicatorColor: Colors.white,
              labelStyle: TextStyle(fontSize: 10,fontWeight: FontWeight.w400),

              tabs: [
                Tab(text: "JUST JOINED"),
                Tab(text: "MATCHES"),
                Tab(text: "RESENT VIEWS"),
                Tab(text: "FAVOURITE"),
              ],
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
            title: TabBar(
              indicatorColor: Colors.white,
              labelStyle: TextStyle(fontSize: 10,fontWeight: FontWeight.w400),

              tabs: [
                Tab(text: "PENDING"),
                Tab(text: "ACCEPTED"),
                Tab(text: "DECLINED"),
                Tab(text: "REPLIED"),
              ],
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



