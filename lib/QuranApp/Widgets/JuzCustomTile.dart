import 'package:flutter/material.dart';
import 'package:flutter_application_1/QuranApp/Models/JusModel.dart';

class JuzCustomTile extends StatelessWidget {
  final List<JusAyahs> list;
  int index;
  JuzCustomTile({required this.list, required this.index});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color.fromARGB(255, 255, 255, 221),
          boxShadow: [
            BoxShadow(
              color: Colors.blueGrey,
              blurRadius: 3,
            )
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Text(
                  list[index].ayahsText,
                  textAlign: TextAlign.end,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle
                    //       border: Border.all(color: Colors.black, width: 0),
                    //    borderRadius: BorderRadius.circular(20),
                    ,
                  ),
                  child: Text(
                    list[index].ayahNumber.toString(),
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey),
                  ),
                ),
              ),
              Spacer(),
              Expanded(
                child: Text(
                  list[index].surahName,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
