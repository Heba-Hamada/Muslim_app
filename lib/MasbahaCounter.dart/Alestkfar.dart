import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/QuranApp/Screans/HomeScrean.dart';

class Alestkfar extends StatefulWidget {
  const Alestkfar({super.key});

  @override
  State<Alestkfar> createState() => _AlestkfarState();
}

class _AlestkfarState extends State<Alestkfar> {
  static int _countersophanalah = 1;
  bool noani = false;
  void _incrementCounterSophanAlah() {
    setState(() {
      noani = true;

      _countersophanalah++;
    });
  }

  static int _counterALhamed = 1;
  void _incrementCounterALhamed() {
    setState(() {
      noani = true;

      _counterALhamed++;
    });
  }

  static int _counterAltohed = 1;
  void _incrementCounterAltohed() {
    setState(() {
      noani = true;

      _counterAltohed++;
    });
  }

  static int _counterAltakber = 1;
  void _incrementCounterAltakber() {
    setState(() {
      noani = true;

      _counterAltakber++;
    });
  }

  reset() {
    setState(() {
      _counterALhamed = 0;
      _counterAltakber = 0;
      _counterAltohed = 0;
      _countersophanalah = 0;
    });
  }

  String text = 'اخفاء الأرقام';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 155, 173, 182),
      appBar: AppBar(
        actions: [
          Spacer(),
          Container(
            padding: EdgeInsets.all(2),
            color: Colors.blueGrey,
            child: Text(
              '   ألا بذكر الله تطمئن القلوب  ',
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.black),
            ),
          ),
          Spacer(),
          InkWell(
            onTap: reset,
            child: Icon(
              Icons.remove_circle,
              size: 22,
              color: Colors.black,
            ),
          )
        ],
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        //    mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
          ),
          Row(
            //
            children: [
              Icon(
                Icons.star,
                size: 70,
                color: _countersophanalah > 0 && _countersophanalah < 33
                    ? Colors.blueGrey
                    : _countersophanalah >= 33 && _countersophanalah < 100
                        ? Colors.blue
                        : _countersophanalah >= 33 && _countersophanalah < 100
                            ? Colors.green
                            : _countersophanalah >= 100 &&
                                    _countersophanalah < 200
                                ? Color.fromARGB(255, 248, 213, 162)
                                : Color.fromARGB(255, 190, 193, 194),
              ),
              Text(
                textAlign: TextAlign.end,
                _countersophanalah.toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              Spacer(),
              InkWell(
                onTap: _incrementCounterSophanAlah,
                child: Container(
                  height: 60,
                  width: 230,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Colors.blueGrey,
                  ),
                  child: Text(
                    textAlign: TextAlign.center,
                    "أستغفر الله ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Icon(
                Icons.star,
                size: 70,
                color: _counterALhamed > 0 && _counterALhamed < 33
                    ? Colors.blueGrey
                    : _counterALhamed >= 33 && _counterALhamed < 100
                        ? Colors.blue
                        : _counterALhamed >= 33 && _counterALhamed < 100
                            ? Color.fromARGB(255, 96, 187, 99)
                            : _counterALhamed >= 100 && _counterALhamed < 200
                                ? Colors.orange
                                : Color.fromARGB(255, 190, 193, 194),
              ),
              Text(
                textAlign: TextAlign.end,
                _counterALhamed.toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              Spacer(),
              InkWell(
                onTap: _incrementCounterALhamed,
                child: Container(
                  padding: EdgeInsets.all(4),
                  width: 230,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Colors.blueGrey,
                  ),
                  child: Text(
                    textAlign: TextAlign.center,
                    "سبحان الله وبحمده \n سبحان الله العظيم ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Icon(
                Icons.star,
                size: 70,
                color: _counterAltohed > 0 && _counterAltohed < 33
                    ? Colors.blueGrey
                    : _counterAltohed >= 33 && _counterAltohed < 100
                        ? Colors.blue
                        : _counterAltohed >= 33 && _counterAltohed < 100
                            ? Colors.green
                            : _counterAltohed >= 100 && _counterAltohed < 200
                                ? Colors.orange
                                : Color.fromARGB(255, 190, 193, 194),
              ),
              Text(
                textAlign: TextAlign.end,
                _counterAltohed.toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              Spacer(),
              InkWell(
                onTap: _incrementCounterAltohed,
                child: Container(
                  width: 230,
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Colors.blueGrey,
                  ),
                  child: Text(
                    textAlign: TextAlign.center,
                    "رب اغفر لي و تب علي , انك أنت التواب الرحيم ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Icon(
                Icons.star,
                size: 70,
                color: _counterAltakber > 0 && _counterAltakber < 33
                    ? Colors.blueGrey
                    : _counterAltakber >= 33 && _counterAltakber < 100
                        ? Colors.blue
                        : _counterAltakber >= 33 && _counterAltakber < 100
                            ? Colors.green
                            : _counterAltakber >= 100 && _counterAltakber < 200
                                ? Colors.orange
                                : Color.fromARGB(255, 190, 193, 194),
              ),
              Text(
                textAlign: TextAlign.end,
                _counterAltakber.toString(),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              Spacer(),
              InkWell(
                onTap: _incrementCounterAltakber,
                child: Container(
                  padding: EdgeInsets.all(4),
                  width: 230,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Colors.blueGrey,
                  ),
                  child: Text(
                    textAlign: TextAlign.center,
                    " اللهم اني ظلمت نفسي فاغفر لي فانه لا يغفر الذنوب الا أنت ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 180,
          ),
          InkWell(
            onTap: () {
              //Alestkfarcount
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Alestkfarcount(),
                  ));
            },
            child: Container(
              padding: EdgeInsets.all(5),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: Colors.blueGrey,
              ),
              margin: EdgeInsets.all(5),
              child: Text(
                textAlign: TextAlign.center,
                'انتهيت من الاستغفار ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Alestkfarcount extends StatefulWidget {
  const Alestkfarcount({super.key});

  @override
  State<Alestkfarcount> createState() => AlestkfarcountState();
}

class AlestkfarcountState extends State<Alestkfarcount> {
  int sum = _AlestkfarState._countersophanalah +
      _AlestkfarState._counterALhamed +
      _AlestkfarState._counterAltohed +
      _AlestkfarState._counterAltakber;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 155, 173, 182),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(
          ' محصولك من الحسنات ',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  height: 70,
                ),
                Text(
                  " أستغفر الله  : ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  _AlestkfarState._countersophanalah.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  "سبحان الله وبحمده \n سبحان الله العظيم : ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  _AlestkfarState._counterALhamed.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  "رب اغفر لي و تب علي ,\n انك أنت التواب الرحيم  :  ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  _AlestkfarState._counterAltohed.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  " اللهم اني ظلمت نفسي فاغفر  \n لي فانه لا يغفر الذنوب الا أنت : ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  _AlestkfarState._counterAltakber.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Divider(
              color: Colors.grey,
              thickness: 0.5,
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Text(
                  "المجموع : ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      color: Colors.blueGrey),
                ),
                Text(
                  sum.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Alestkfar(),
                        ));
                  },
                  child: Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Text(
                        "العودة للاستغفار  ",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w200),
                      )),
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    /*   Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Tasbeh(),
                        ));*/
                  },
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScrean(),
                          ));
                    },
                    child: Container(
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Text(
                          "العودة للصفحة الرئيسية ",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w300),
                        )),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
