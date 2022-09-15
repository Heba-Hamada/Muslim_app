import 'dart:ui';

import 'package:flutter/material.dart';

class AzkarMds extends StatefulWidget {
  const AzkarMds({super.key});

  @override
  State<AzkarMds> createState() => _AzkarMdsState();
}

class _AzkarMdsState extends State<AzkarMds> {
  int currentstep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        title: Text(
          'أذكار المسجد',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.w500),
        ),
      ),
      body: Theme(
        data: Theme.of(context)
            .copyWith(colorScheme: ColorScheme.light(primary: Colors.blueGrey)),
        child: Stepper(
          type: StepperType.horizontal,
          steps: getsteps(),
          currentStep: currentstep,
          onStepCancel: (() {
            setState(() {
              if (currentstep == 0) {
                currentstep = 1;
              }
              currentstep = currentstep - 1;
            });
          }),
          onStepTapped: (value) {
            setState(() {
              currentstep = value;
            });
          },
          onStepContinue: (() {
            setState(() {
              if (currentstep == 2) {
                currentstep = -1;
              }
              currentstep = currentstep + 1;
            });
          }),
        ),
      ),
    );
  }

  List<Step> getsteps() => [
        Step(
            isActive: currentstep >= 0,
            title: Text('الذَّهَابِ للمَسْجِدِ'),
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.blueGrey.shade300),
                  child: Text(
                      'اللّهُـمَّ اجْعَـلْ في قَلْبـي نورا ، وَفي لِسـاني نورا، وَاجْعَـلْ في سَمْعي نورا، وَاجْعَـلْ في بَصَري نورا، وَاجْعَـلْ مِنْ خَلْفي نورا، وَمِنْ أَمامـي نورا، وَاجْعَـلْ مِنْ فَوْقـي نورا ، وَمِن تَحْتـي نورا .اللّهُـمَّ أَعْطِنـي نورا. '),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.blueGrey.shade300),
                  child: Text(
                      '''اللّهُـمَّ إِنَّـكَ خَلَـقْتَ نَفْسـي وَأَنْـتَ تَوَفّـاهـا لَكَ ممَـاتـها وَمَحْـياها ، إِنْ أَحْيَيْـتَها فاحْفَظْـها ، وَإِنْ أَمَتَّـها فَاغْفِـرْ لَـها . اللّهُـمَّ إِنَّـي أَسْـأَلُـكَ العـافِـيَة. '''),
                ),
              ],
            )),
        Step(
            isActive: currentstep >= 1,
            title: Text("دُخُولِ للمَسْجِدِ"),
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.blueGrey.shade300),
                  child: Text(''' يَبْدَأُ بِرِجْلِهِ اليُمْنَى، وَيَقُولُ:
أَعوذُ باللهِ العَظيـم وَبِوَجْهِـهِ الكَرِيـم وَسُلْطـانِه القَديـم مِنَ الشّيْـطانِ الرَّجـيم، بِسْمِ اللَّهِ، وَالصَّلاةُ وَالسَّلامُ عَلَى رَسُولِ الله، اللّهُـمَّ افْتَـحْ لي أَبْوابَ رَحْمَتـِك. '''),
                ),
              ],
            )),
        Step(
            isActive: currentstep >= 2,
            title: Text('الخُرُوجِ مِنَ المَسْجِدِ'),
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.blueGrey.shade300),
                  child: Text(''' يَبْدَأُ بِرِجْلِهِ الْيُسْرَى، وَيَقُولُ:
بِسْـمِ اللَّـهِ وَالصَّلاةُ وَالسَّلامُ عَلَى رَسُولِ اللَّهِ، اللَّهُمَّ إنِّي أَسْأَلُكَ مِنْ فَضْلِكَ، اللَّهُمَّ اعْصِمْنِي مِنَ الشَّيْطَانِ الرَّجِيم  '''),
                ),
              ],
            )),
      ];
}
