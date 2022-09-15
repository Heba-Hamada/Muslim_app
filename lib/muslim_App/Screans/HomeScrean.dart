import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_application_1/muslim_App/Category/AL_Azkar/Azkar_evening.dart';
import 'package:flutter_application_1/muslim_App/Category/AL_Azkar/Azkar_morning.dart';
import 'package:flutter_application_1/muslim_App/Category/AL_Azkar/Azkar_mosque.dart';
import 'package:flutter_application_1/muslim_App/Category/AL_Azkar/Azkar_pray.dart';
import 'package:flutter_application_1/muslim_App/Category/AL_Azkar/Azkar_sleeping.dart';

import 'package:flutter_application_1/muslim_App/Category/AL_Hadeth/AL_Hadeth_main.dart';
import 'package:flutter_application_1/muslim_App/Category/MasbahaCounter.dart/AddZker.dart';
import 'package:flutter_application_1/muslim_App/Category/MasbahaCounter.dart/Alestkfar.dart';
import 'package:flutter_application_1/muslim_App/Category/MasbahaCounter.dart/Taspeh.dart';
import 'package:flutter_application_1/muslim_App/Models/AyaOfTheDay.dart';
import 'package:flutter_application_1/muslim_App/Screans/QuranScrean.dart';
import 'package:flutter_application_1/muslim_App/data/ApiHelper.dart';

//import 'package:hijri/flutter pub add hijri.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScrean extends StatefulWidget {
  const HomeScrean({super.key});

  @override
  State<HomeScrean> createState() => _HomeScreanState();
}

class _HomeScreanState extends State<HomeScrean> {
  void setData() async {
    final pref = await SharedPreferences.getInstance();
    pref.setBool("alreadyUsed", false);
  }

  //AyaOfTheDay? data;
  ApiHelper apiHelper = ApiHelper();
  @override
  void initState() {
    super.initState();
    setData();
  }

  @override
  Widget build(BuildContext context) {
    var _size = MediaQuery.of(context).size;
    //HijriCalendar.setLocal('ar');
    var _hijri = HijriCalendar.now();
    var day = DateTime.now();
    var format = DateFormat('EEE , d MMM yyyy');
    var formated = format.format(day);
    // apiHelper.getAyaOfTheDay().then((value) => data = value);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 155, 173, 182),
        //   backgroundColor: Color.fromARGB(255, 169, 195, 240),
        body: SingleChildScrollView(
          child: Column(children: [
            /*  Container(
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.all(20),
              height: _size.height * 0.22,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "assets/Images/bluemosq.jpg",
                      ))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    formated,
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: _hijri.hDay.toString(),
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        )),
                    TextSpan(
                        text: ' ${_hijri.longMonthName} ',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        )),
                    TextSpan(
                        text: ' ${_hijri.hYear}-AH',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        )),
                  ])),
                ],
              ),
            ),*/
            //  Expanded(
            //child:
            SingleChildScrollView(
              padding: EdgeInsets.only(top: 10, bottom: 20),
              child: Column(
                children: [
                  FutureBuilder<AyaOfTheDay>(
                    future: apiHelper.getAyaOfTheDay(),
                    builder: (context, snapshot) {
                      switch (snapshot.connectionState) {
                        case ConnectionState.none:
                          return Icon(Icons.sync_problem);
                        case ConnectionState.waiting:
                          return CircularProgressIndicator();

                        case ConnectionState.active:
                          return CircularProgressIndicator();
                        case ConnectionState.done:
                          return Container(
                            decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 3,
                                      spreadRadius: 1,
                                      offset: Offset(0, 1))
                                ],
                                borderRadius: BorderRadius.circular(32)),
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Text(
                                  'كل يوم أية قرءانية ',
                                  style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Divider(
                                  color: Colors.black,
                                  thickness: 0.5,
                                ),
                                Text(
                                  snapshot.data!.arText!,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      //   letterSpacing: 0.5,
                                      wordSpacing: 0.5,
                                      color: Colors.white,
                                      fontSize: 20),
                                ),
                                Text(
                                  snapshot.data!.enTran!,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                RichText(
                                  text: TextSpan(children: <InlineSpan>[
                                    TextSpan(
                                        text: ' ${snapshot.data!.surNumber!} -'
                                            .toString(),
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                        )),
                                    TextSpan(
                                        text: '${snapshot.data!.surEnName!} ',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                        )),
                                  ]),
                                )
                              ],
                            ),
                          );
                      }
                    },
                  )
                  /*  Container(
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(32)),
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Text('Quran Aya of the Day ',
                              style: TextStyle(
                                  color: Colors.black, fontWeight: FontWeight.bold)),
                          Divider(
                            color: Colors.black,
                            thickness: 0.5,
                          ),
                          Text(
                            data!.arText!,
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            data!.enTran!,
                            style: TextStyle(color: Colors.black),
                          ),
                          RichText(
                            text: TextSpan(children: <InlineSpan>[
                              TextSpan(
                                  text: data!.surNumber!.toString(),
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  )),
                              TextSpan(
                                  text: ' ${data!.surEnName!} ',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  )),
                            ]),
                          )
                        ],
                      ),
                    )*/
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  //Color.fromARGB(255, 152, 202, 227)),
                  InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        builder: (context) => SingleChildScrollView(
                            child: Container(
                                padding: EdgeInsets.only(
                                    bottom: MediaQuery.of(context)
                                        .viewInsets
                                        .bottom),
                                child: AddZker())),
                      );
                      /* Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Masbaha(),
                          ));*/
                    },
                    child: Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(right: 10, left: 10),
                          height: 200,
                          width: 160,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: Color.fromARGB(33, 55, 86, 255)),
                        ),
                        Container(
                            child: Image.asset(
                          'assets/Images/hand.png',
                          height: 90,
                          width: 90,
                        )),
                        Positioned(
                          bottom: 10,
                          right: 10,
                          child: Text(
                            textAlign: TextAlign.center,
                            'تسبيح حر\n (مسبحة )',
                            style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ALHadeth(),
                          ));
                    },
                    //ALHadeth
                    child: Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(right: 10, left: 10),
                          height: 200,
                          width: 160,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: Color.fromARGB(255, 152, 202, 227)),
                        ),
                        Container(
                            child: Image.asset(
                          'assets/Images/moh.png',
                          height: 90,
                          width: 90,
                        )),
                        Positioned(
                          bottom: 10,
                          right: 5,
                          child: Text(
                            textAlign: TextAlign.center,
                            '    الأحاديث  ',
                            style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Alestkfar(),
                          ));
                    },
                    child: Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(right: 10, left: 10),
                          height: 200,
                          width: 160,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: Color.fromARGB(255, 228, 228, 228)),
                        ),
                        Container(
                            child: Image.asset(
                          'assets/Images/masbha.png',
                          height: 90,
                          width: 90,
                        )),
                        Positioned(
                          bottom: 10,
                          right: 5,
                          child: Text(
                            textAlign: TextAlign.center,
                            '      استغفار   ',
                            style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: Colors.brown),
                          ),
                        )
                      ],
                    ),
                  ),

                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Tasbeh(),
                          ));
                    },
                    child: Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(right: 10, left: 10),
                          height: 200,
                          width: 160,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: Color.fromARGB(255, 28, 61, 77)),
                        ),
                        Container(
                            child: Image.asset(
                          'assets/Images/mabha.png',
                          height: 90,
                          width: 90,
                        )),
                        Positioned(
                          bottom: 10,
                          right: 5,
                          child: Text(
                            textAlign: TextAlign.center,
                            '      تسبيح   ',
                            style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => QuranScrean(),
                          ));
                    },
                    child: Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(right: 10, left: 10),
                          height: 200,
                          width: 160,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: Color.fromARGB(255, 156, 156, 156)),
                        ),
                        Container(
                            child: Image.asset(
                          'assets/Images/Quranh.png',
                          height: 70,
                          width: 70,
                        )),
                        Positioned(
                          bottom: 10,
                          right: 5,
                          child: Text(
                            'القرآن\n الكريم ',
                            style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.all(5),
              child: Text(
                'قائمة الأذكار ',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            Column(
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
              ],
            )
            //   )
          ]),
        ),
      ),
    );
  }
}
