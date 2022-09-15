import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/QuranApp/Models/SajdaList.dart';
import 'package:flutter_application_1/QuranApp/Screans/SajdaAyatt.dart';

class SajdaCustomListTile extends StatelessWidget {
  SajdaAyat sajdaAyat;
  int index;
  BuildContext context;
  SajdaCustomListTile(
      {required this.sajdaAyat, required this.context, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {
        log(index.toString());
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SajdaAyatt(
                index,
              ),
            ));
      }),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [BoxShadow(color: Colors.black, blurRadius: 3)]),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 40,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.blueGrey),
                  child: Text(
                    sajdaAyat.juzNumber.toString(),
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: '${sajdaAyat.surahenglishName} \n ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                      TextSpan(
                          text: '${sajdaAyat.revelationType} \n ',
                          style: TextStyle(color: Colors.black)),
                    ]))
                  ],
                ),
                Spacer(),
                Text(
                  sajdaAyat.surahName!,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
