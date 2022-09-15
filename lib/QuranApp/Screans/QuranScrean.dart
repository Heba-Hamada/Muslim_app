import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/QuranApp/Constants/Constants.dart';
import 'package:flutter_application_1/QuranApp/Models/SajdaList.dart';
import 'package:flutter_application_1/QuranApp/Models/Suras.dart';
import 'package:flutter_application_1/QuranApp/Screans/Juzzzzzz.dart';
import 'package:flutter_application_1/QuranApp/Screans/Surah1.dart';
import 'package:flutter_application_1/QuranApp/Screans/Surahdetail.dart';
import 'package:flutter_application_1/QuranApp/Widgets/SurahCustomListTile.dart';
import 'package:flutter_application_1/QuranApp/data/ApiHelper.dart';

import '../Widgets/SajdaCustomListTile.dart';
import 'JuzScrean.dart';

const List<String> list = <String>[
  'الأجزاء',
  'السجدات المذكورة',
  'سور القران '
];

class QuranScrean extends StatefulWidget {
  const QuranScrean({super.key});

  @override
  State<QuranScrean> createState() => _QuranScreanState();
}

class _QuranScreanState extends State<QuranScrean> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue = list.first;

    return DefaultTabController(
      length: 1,
      initialIndex: 0,
      child: SafeArea(
        child: Scaffold(
            backgroundColor: Color.fromARGB(255, 155, 173, 182),
            appBar: AppBar(
              backgroundColor: Colors.blueGrey,
              actions: [
                DropdownButtonExample(),
              ],
              centerTitle: true,
              bottom: TabBar(tabs: [
                Text(
                  'سور القران ',
                  style: TextStyle(fontSize: 30),
                ),
              ]),
            ),
            body: TabBarView(
              children: [
                FutureBuilder(
                    future: ApiHelper.apiHelper.getSurah(),
                    builder: (context, AsyncSnapshot<List<Surah>> snapshot) {
                      if (snapshot.hasData) {
                        List<Surah>? surah = snapshot.data;

                        return ListView.builder(
                            itemCount: surah!.length,
                            itemBuilder: (context, index) =>
                                SurahCustomListTile(
                                    surah: surah[index],
                                    context: context,
                                    ontap: () {
                                      setState(() {
                                        Constants.surahIndex = (index + 1);
                                      });
                                      Navigator.pushNamed(
                                          context, Surahdetail.id);
                                    }));
                      }
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }),
                /* FutureBuilder(
                    future: ApiHelper.apiHelper.getSajda(),
                    builder: (context, AsyncSnapshot<SajdaList> snapshot) {
                      if (snapshot.hasError) {
                        return Center(
                          child: Text('somehting went wrong '),
                        );
                      }
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      return ListView.builder(
                          itemCount: snapshot.data!.sajdaAyat.length,
                          itemBuilder: (context, index) => SajdaCustomListTile(
                                sajdaAyat: snapshot.data!.sajdaAyat[index],
                                context: context,
                              ));
                    }),*/
                /* InkWell(
                  child: Container(
                    padding: EdgeInsets.all(8),
                    child: ListView.builder(
                      itemCount: 30,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              Constants.juzIndex = (index + 1);
                            });
                            Navigator.pushNamed(context, JuzScrean.id);
                          },
                          child: Card(
                              elevation: 4,
                              color: Colors.blueGrey,
                              child: Center(
                                child: Text(
                                  ' ${index + 1}  الجزء ',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              )),
                        );
                      },
                    ),
                  ),
                )*/
              ],
            )),
      ),
    );
  }
}

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      dropdownColor: Color.fromARGB(255, 105, 120, 127),
      onTap: () {
        if (dropdownValue == 'الأجزاء') {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Juzzzzz(),
              ));
        } else if (dropdownValue == 'السجدات المذكورة') {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Surahh(),
              ));
        }
      },
      icon: const Icon(
        Icons.menu,
        color: Colors.white,
      ),
      elevation: 16,
      style: const TextStyle(color: Colors.white),
      underline: Container(
        height: 2,
        color: Colors.blueGrey,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        );
      }).toList(),
    );
  }
}
