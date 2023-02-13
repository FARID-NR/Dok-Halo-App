import 'package:clone_halodoc/pages/home/chat_page.dart';
import 'package:clone_halodoc/pages/home/home_page.dart';

import 'package:clone_halodoc/pages/home/profile_page.dart';
import 'package:clone_halodoc/theme.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget bottomNav(){
      return BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 9,
        clipBehavior: Clip.antiAlias,
        child: BottomNavigationBar(
          backgroundColor: containerInputColor,
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              print(value);
              currentIndex = value;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.fromLTRB(0, 18, 0, 0),
                child: Image.asset(
                  'assets/icon_home.png',
                  width: 35,
                  color: currentIndex == 0 ? primaryColor : Color(0xff808191)
                ),
              ),
              label: ''
            ),

            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.fromLTRB(0, 18, 0, 0),
                child: Image.asset(
                  'assets/icon_pesan.png',
                  width: 40,
                  color: currentIndex == 1 ? primaryColor : Color(0xff808191)
                ),
              ),
              label: ''
            ),

            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.fromLTRB(0, 18, 0, 0),
                child: Image.asset(
                  'assets/icon_profile.png',
                  width: 30,
                  color: currentIndex == 2 ? primaryColor : Color(0xff808191)
                ),
              ),
              label: ''
            ),
          ],
        ),
      );
    }

    Widget body(){
      switch (currentIndex) {
        case 0:
          return HomePage();
          break;
        case 1:
          return ChatPage();
          break;
        case 2:
          return ProfilePage();
          break; 
        default: 
          return HomePage();
      }
    }

    return Scaffold(
      backgroundColor: bgColor1,
      bottomNavigationBar: bottomNav(),
      body: body(),
    );
  }
}