import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/muslim_App/Models/SurahTranslation.dart';

class TranslatinTile extends StatelessWidget {
  const TranslatinTile(
      {super.key, required this.index, required this.surahTranslation});
  final int index;
  final SurahTranslation surahTranslation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(blurRadius: 1)],
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                  ),
                  padding: EdgeInsets.all(16),
                  width: double.infinity,
                ),
                Positioned(
                  top: 3,
                  left: 12,
                  child: Container(
                    padding: EdgeInsets.all(6),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: Text(
                      surahTranslation.aya!,
                      style: TextStyle(color: Colors.blueGrey, fontSize: 16),
                    ),
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    surahTranslation.arabic_text!,
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    surahTranslation.translation!,
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        color: Color.fromARGB(255, 22, 67, 100),
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
