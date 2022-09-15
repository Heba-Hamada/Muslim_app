import 'package:flutter/material.dart';

import 'package:flutter_application_1/muslim_App/Constants/Constants.dart';
import 'package:flutter_application_1/muslim_App/Models/SurahTranslation.dart';
import 'package:flutter_application_1/muslim_App/Widgets/TranslatinTile.dart';
import 'package:flutter_application_1/muslim_App/data/ApiHelper.dart';
import 'package:solid_bottom_sheet/solid_bottom_sheet.dart';

enum Translation {
  english,
  trocish,
  hindia,
  Spanish,
  Chinese,
}

class Surahdetail extends StatefulWidget {
  const Surahdetail({super.key});
  static const String id = 'surahDetail_screan';
  @override
  State<Surahdetail> createState() => _SurahdetailState();
}

class _SurahdetailState extends State<Surahdetail> {
  //SolidController _controller = SolidController();
  Translation? _translation = Translation.english;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: FutureBuilder(
          future: ApiHelper.apiHelper
              .getTranstaltion(Constants.surahIndex!, _translation!.index),
          builder: (context, AsyncSnapshot<SurahTranslationList> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasData) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: ListView.builder(
                  itemCount: snapshot.data!.translationList.length,
                  itemBuilder: (context, index) {
                    return TranslatinTile(
                        index: index,
                        surahTranslation:
                            snapshot.data!.translationList[index]);
                  },
                ),
              );
            } else {
              return Center(
                child: Text('translation not found'),
              );
            }
          },
        ),
        bottomSheet: SolidBottomSheet(
          headerBar: Container(
            color: Color.fromARGB(255, 206, 206, 206),
            height: 50,
            child: Center(
              child: Text(
                "اسحبني !",
                style: TextStyle(color: Colors.blueGrey),
              ),
            ),
          ),
          body: Container(
            color: Colors.white,
            height: 30,
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    ListTile(
                        title: Text("English"),
                        leading: Radio<Translation>(
                          value: Translation.english,
                          groupValue: _translation,
                          onChanged: (Translation? value) {
                            setState(() {
                              _translation = value;
                            });
                          },
                        )),
                    ListTile(
                        title: Text("Turkish"),
                        leading: Radio<Translation>(
                          value: Translation.trocish,
                          groupValue: _translation,
                          onChanged: (Translation? value) {
                            setState(() {
                              _translation = value;
                            });
                          },
                        )),
                    ListTile(
                        title: Text("Hindi"),
                        leading: Radio<Translation>(
                          value: Translation.hindia,
                          groupValue: _translation,
                          onChanged: (Translation? value) {
                            setState(() {
                              _translation = value;
                            });
                          },
                        )),
                    ListTile(
                        title: Text("Spanish"),
                        leading: Radio<Translation>(
                          value: Translation.Spanish,
                          groupValue: _translation,
                          onChanged: (Translation? value) {
                            setState(() {
                              _translation = value;
                            });
                          },
                        )),
                    ListTile(
                        title: Text("Chinese"),
                        leading: Radio<Translation>(
                          value: Translation.Chinese,
                          groupValue: _translation,
                          onChanged: (Translation? value) {
                            setState(() {
                              _translation = value;
                            });
                          },
                        )),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
