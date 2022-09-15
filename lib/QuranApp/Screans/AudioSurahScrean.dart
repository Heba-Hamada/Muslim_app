import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/QuranApp/Models/Qari.dart';
import 'package:flutter_application_1/QuranApp/data/ApiHelper.dart';

import '../Models/Suras.dart';
import 'AudioScrean.dart';

class AudioSurahScrean extends StatefulWidget {
  const AudioSurahScrean({super.key, required this.qari});
  final Qurai qari;
  @override
  State<AudioSurahScrean> createState() => _AudioSurahScreanState();
}

class _AudioSurahScreanState extends State<AudioSurahScrean> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'Surah',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        body: FutureBuilder(
          future: ApiHelper.apiHelper.getSurah(),
          builder: (context, AsyncSnapshot<List<Surah>> snapshot) {
            if (snapshot.hasData) {
              List<Surah>? surah = snapshot.data;
              return ListView.builder(
                itemCount: surah!.length,
                itemBuilder: (context, index) {
                  return AudioTile(
                      surahName: snapshot.data![index].englishName,
                      totalAya: snapshot.data![index].numberOfAyahs,
                      number: snapshot.data![index].name,
                      ontap: () {
                        /*     Navigator.push(
                            //qari:widget.qari ,index index+1 ,list :surah
                            context,
                            MaterialPageRoute(
                              builder: (context) => AudioScrean(
                                qari: widget.qari,
                                index: index + 1,
                                list: surah,
                              ),
                            ));*/
                      });
                },
              );
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}

Widget AudioTile(
    {required String? surahName,
    required totalAya,
    required VoidCallback ontap,
    required number}) {
  return InkWell(
    onTap: ontap,
    child: Padding(
      padding: EdgeInsets.all(4),
      child: Container(
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  blurRadius: 5,
                  spreadRadius: 0,
                  color: Colors.black,
                  offset: Offset(0, 3))
            ]),
        child: Row(children: [
          Container(
            alignment: Alignment.center,
            height: 30,
            width: 40,
            padding: EdgeInsets.all(8),
            decoration:
                BoxDecoration(color: Colors.black, shape: BoxShape.rectangle),
            child: Text(
              number.toString(),
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            children: [
              Text(
                surahName!,
                textAlign: TextAlign.end,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 3,
              ),
              Text("Total Aya : $totalAya ",
                  style: TextStyle(color: Colors.black, fontSize: 16))
            ],
          ),
          Spacer(),
          Icon(
            Icons.play_circle,
            color: Colors.blueGrey,
          )
        ]),
      ),
    ),
  );
}
