import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/QuranApp/Screans/mainpage.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBurdingScrean extends StatelessWidget {
  const OnBurdingScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 228, 228, 228),
        body: IntroductionScreen(
          pages: [
            PageViewModel(
                title: "قراءة القران ",
                bodyWidget: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      textAlign: TextAlign.center,
                      "بهذا التطبيق يمكنك قراءة القران سورة سورة منفردة ,\n   قراءة القران بنظام الأجزاء \n,التعرف على مواضغ السجدات في القران ",
                    ),
                  ],
                ),
                image: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/Images/read.png',
                  ),
                  radius: 180,
                )),
            PageViewModel(
              title: "التسبيح والاستغفار",
              bodyWidget: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                      textAlign: TextAlign.center,
                      " ويمكنك اضافة الذكر الخاص بك \nالتسبيح والاستغفار وغيرهم بكل سهولة"),
                ],
              ),
              image: CircleAvatar(
                backgroundImage: AssetImage('assets/Images/dow.png'),
                radius: 180,
              ),
            ),
            PageViewModel(
              title: "الأذكار والأدعية ",
              bodyWidget: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                      textAlign: TextAlign.center,
                      "في التطبيق يمكنك الوصول لأذكار الصبح والمساء والنوم \nو غيرهم بكل سهولة "),
                ],
              ),
              image: CircleAvatar(
                backgroundImage: AssetImage('assets/Images/Azkar.png'),
                radius: 180,
              ),
            ),
          ],
          onDone: () {
            // When done button is press
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: ((context) {
              return MainPage();
            })));
          },
          onSkip: () {
            // You can also override onSkip callback
          },
          showBackButton: false,
          showNextButton: true,
          next: Icon(
            Icons.arrow_forward,
            color: Colors.black,
          ),
          done: const Text("Done",
              style:
                  TextStyle(fontWeight: FontWeight.w600, color: Colors.black)),
          dotsDecorator: DotsDecorator(
              size: const Size.square(10.0),
              activeSize: const Size(20.0, 10.0),
              activeColor: Colors.blueGrey,
              color: Colors.grey,
              spacing: const EdgeInsets.symmetric(horizontal: 3.0),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0))),
        ));
  }
}
