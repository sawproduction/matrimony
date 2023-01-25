import 'package:flutter/material.dart';
import 'package:matrimony/elements/tabbar.dart';
import 'package:matrimony/profile_view/profile_setting.dart';
class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Tabbar_Screen(),
    Text('Search Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Search_Tabbar_Screen(),
    Profile_Setting_Screen(),
    Profile_Setting_Screen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffCCC7C7),
    body: Container(child: Center(child: _widgetOptions.elementAt(_selectedIndex),),),
    bottomNavigationBar: CreateBottombar(context),

    );
  }
  Container CreateBottombar(BuildContext context) {
    return Container(

      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(24),
          bottomLeft: Radius.circular(24),
        ),
        child: BottomNavigationBar(
          unselectedItemColor: Colors.grey,


          //add background color

          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/home.png")),

              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/search.png")),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/mail.png")),
              label: 'Mail',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/king.png")),
              label: 'upgarde',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/account.png")),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.red,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

