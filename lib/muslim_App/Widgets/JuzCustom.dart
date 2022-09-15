import 'package:flutter/material.dart';

import '../Models/JusModel.dart';
import 'JuzCustomTile.dart';

class juzSurahName extends StatelessWidget {
  final List<JusAyahs> list;
  final int index;
  juzSurahName({required this.list, required this.index});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => JuzCustomTile(index: index, list: list),
          ))),
      child: Container(
        child: Text(
          list[index].surahName,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
