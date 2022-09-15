import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/muslim_App/Category/AL_Hadeth/AL_Hadeth_main.dart';
import 'package:flutter_application_1/muslim_App/Screans/Altabehh.dart';
import 'package:flutter_application_1/muslim_App/Screans/HomeScrean.dart';
import 'package:flutter_application_1/muslim_App/Screans/QuranScrean.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Widget> _page = [HomeScrean(), QuranScrean(), Altabehh(), ALHadeth()];

  int _activePage = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: _activePage,
          height: 60.0,
          items: <Widget>[
            Icon(Icons.home, size: 30),
            Icon(Icons.book, size: 30),
            Icon(Icons.audiotrack, size: 30),
            Icon(Icons.mosque, size: 30),
          ],
          color: Colors.blueGrey,
          backgroundColor: Color.fromARGB(255, 155, 173, 182),
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _activePage = index;
            });
          },
          letIndexChange: (index) => true,
        ),
        body: Container(
          color: Colors.blueAccent,
          child: Center(
            child: _page[_activePage],
          ),
        ));
  }
}
