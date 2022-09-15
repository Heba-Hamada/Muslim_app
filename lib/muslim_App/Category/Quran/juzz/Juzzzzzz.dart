import 'package:flutter/material.dart';
import 'package:flutter_application_1/muslim_App/Category/Quran/juzz/JuzScrean.dart';
import 'package:flutter_application_1/muslim_App/Constants/Constants.dart';

class Juzzzzz extends StatefulWidget {
  const Juzzzzz({super.key});

  @override
  State<Juzzzzz> createState() => _JuzzzzzState();
}

class _JuzzzzzState extends State<Juzzzzz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('أجزاء القراآن الكريم '),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: InkWell(
        child: Container(
          padding: EdgeInsets.all(8),
          child: ListView.builder(
            itemCount: 30,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    Constants.juzIndex = (index + 1);
                  });
                  Navigator.pushNamed(context, JuzScrean.id);
                },
                child: Card(
                    margin: EdgeInsets.all(15),
                    elevation: 4,
                    // color: Colors.blueGrey,
                    child: Center(
                      child: Text(
                        ' ${index + 1}  الجزء ',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    )),
              );
            },
          ),
        ),
      ),
    );
  }
}
