import 'package:flutter/material.dart';
import 'package:flutter_application_1/QuranApp/Models/Suras.dart';

class SurahCustomListTile extends StatelessWidget {
  VoidCallback ontap;
  Surah surah;
  BuildContext context;

  SurahCustomListTile(
      {required this.surah, required this.context, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: ontap,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(blurRadius: 3, spreadRadius: 1, offset: Offset(0, 1))
              ],
              borderRadius: BorderRadius.circular(32)),
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text(
                      ' ${surah.number.toString()}  ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Column(
                    children: [
                      Text(
                        surah.englishName!,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(surah.englishNameTranslation!),
                    ],
                  ),
                  Spacer(),
                  Text(
                    surah.name!,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
