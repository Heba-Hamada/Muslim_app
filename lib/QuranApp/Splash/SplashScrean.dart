import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/QuranApp/Screans/OnBurdingScrean.dart';
import 'package:flutter_application_1/QuranApp/Screans/mainpage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScrean extends StatefulWidget {
  const SplashScrean({super.key});

  @override
  State<SplashScrean> createState() => _SplashScreanState();
}

class _SplashScreanState extends State<SplashScrean> {
  bool alreadyUsed = false;
  void getData() async {
    final pref = await SharedPreferences.getInstance();
    alreadyUsed = pref.getBool("alreadyUsed") ?? false;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(context,
                MaterialPageRoute(builder: ((context) {
              return alreadyUsed ? MainPage() : OnBurdingScrean();
            }))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(125, 8, 124, 154),
        body: Stack(
          children: [
            Positioned(
              bottom: 0,
              child: Image.asset("assets/Images/image.jpeg"),
            ),
            Positioned(
              top: 115,
              right: 55,
              child: Container(
                alignment: Alignment.center,
                // height: 100,
                // width: double.infinity,
                // color: Colors.blueGrey,
                child: Text(
                  "Muslim App",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
