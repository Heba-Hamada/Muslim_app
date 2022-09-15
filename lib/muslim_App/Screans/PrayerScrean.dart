import 'package:flutter/material.dart';

class PrayerScrean extends StatefulWidget {
  const PrayerScrean({super.key});

  @override
  State<PrayerScrean> createState() => _PrayerScreanState();
}

class _PrayerScreanState extends State<PrayerScrean> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromARGB(255, 169, 195, 240),
      body: Center(
        child: Text("PrayerScrean"),
      ),
    );
  }
}
