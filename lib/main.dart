import 'package:flutter/material.dart';
import 'package:flutter_application_1/AL_Hadeth.dart/Al-Hadeh_ALnabawe.dart';
import 'package:flutter_application_1/AL_Hadeth.dart/Al_Hadeth_Alqudse.dart';
import 'package:flutter_application_1/MasbahaCounter.dart/AddZker.dart';
import 'package:flutter_application_1/MasbahaCounter.dart/Alestkfar.dart';
import 'package:flutter_application_1/MasbahaCounter.dart/Masbaha.dart';
import 'package:flutter_application_1/MasbahaCounter.dart/Taspeh.dart';
import 'package:flutter_application_1/QuranApp/Screans/JuzScrean.dart';
import 'package:flutter_application_1/QuranApp/Screans/Surahdetail.dart';
import 'package:flutter_application_1/QuranApp/Splash/SplashScrean.dart';
import 'package:flutter_application_1/QuranApp/data/SpHelper.dart';
import 'package:flutter_application_1/nameofAlah/nameofAlah.dart';
import 'package:provider/provider.dart';
//import 'package:firebase_core/firebase_core.dart';
//import 'firebase_options.dart';

// ...

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AddZ>(create: (context) => AddZ()),
        ChangeNotifierProvider<SpHelper>(create: (context) => SpHelper()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScrean(),
        routes: {
          Surahdetail.id: (context) => Surahdetail(),
          JuzScrean.id: (context) => JuzScrean(),
        },
      ),
    );
  }
}

class test extends StatefulWidget {
  const test({super.key});

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
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
