import 'package:flutter/material.dart';
import 'package:flutter_application_1/muslim_App/Category/AL_Hadeth/Al-Hadeh_ALnabawe.dart';
import 'package:flutter_application_1/muslim_App/Category/AL_Hadeth/Al_Hadeth_Alqudse.dart';

class ALHadeth extends StatefulWidget {
  const ALHadeth({super.key});

  @override
  State<ALHadeth> createState() => _ALHadethState();
}

class _ALHadethState extends State<ALHadeth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 155, 173, 182),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        title: Text('الأحاديث '),
        actions: [
          Image.asset(
            'assets/Images/1.png',
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AlHadehALnabawe(),
                  ));
            },
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(right: 10, left: 10),
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.blue.shade100,
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 10,
                  child: Container(
                      child: Image.asset(
                    'assets/Images/moh.png',
                    height: 110,
                    width: 110,
                  )),
                ),
                Positioned(
                  bottom: 11,
                  right: 11,
                  child: Text(
                    'أحاديث نبوية ',
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AlHadethAlqudse(),
                  ));
            },
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(right: 10, left: 10),
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.brown.shade100,
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 10,
                  child: Container(
                      child: Image.asset(
                    'assets/Images/moh.png',
                    height: 110,
                    width: 110,
                  )),
                ),
                Positioned(
                  bottom: 11,
                  right: 11,
                  child: Text(
                    'أحاديث قدسية  ',
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
