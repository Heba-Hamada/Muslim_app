import 'package:flutter/material.dart';
import 'package:flutter_application_1/Azkar/Azkar.dart';
import 'package:flutter_application_1/Azkar/AzkarEvening.dart';
import 'package:flutter_application_1/Azkar/AzkarMOS.dart';
import 'package:flutter_application_1/Azkar/AzkarSleeping.dart';
import 'package:flutter_application_1/Azkar/PrayAzkar.dart';

class Altabehh extends StatefulWidget {
  const Altabehh({super.key});

  @override
  State<Altabehh> createState() => _AltabehhState();
}

class _AltabehhState extends State<Altabehh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 155, 173, 182),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
          actions: [
            Text(
              'قائمة الأذكار ',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AzkarMorning(),
                      ));
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/Images/morning.png',
                        height: 60,
                        width: 60,
                      ),
                      Spacer(),
                      Text(
                        textAlign: TextAlign.start,
                        'أذكار الصباح ',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              InkWell(
                onTap: (() {
                  //AzkarEvening
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AzkarEvening(),
                      ));
                }),
                child: Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.blueGrey),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/Images/evning.png',
                        height: 60,
                        width: 60,
                      ),
                      Spacer(),
                      Text(
                        textAlign: TextAlign.start,
                        'أذكار المساء ',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              InkWell(
                onTap: (() {
                  //AzkarSleeping
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AzkarSleeping(),
                      ));
                }),
                child: Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/Images/sleep.png',
                        height: 60,
                        width: 60,
                      ),
                      Spacer(),
                      Text(
                        textAlign: TextAlign.start,
                        'أذكار النوم ',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              InkWell(
                onTap: (() {
                  //AzkarSleeping
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PrayAzkar(),
                      ));
                }),
                child: Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/Images/pray.png',
                        height: 60,
                        width: 60,
                      ),
                      Spacer(),
                      Text(
                        textAlign: TextAlign.start,
                        'أذكار الصلاة',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              InkWell(
                onTap: (() {
                  //AzkarSleeping
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AzkarMds(),
                      ));
                }),
                child: Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/Images/mos.png',
                        height: 60,
                        width: 60,
                      ),
                      Spacer(),
                      Text(
                        textAlign: TextAlign.start,
                        'أذكار المسجد',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 7,
              ),
            ],
          ),
        )
        //   )

        );
  }
}
