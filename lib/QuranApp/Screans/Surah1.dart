import 'package:flutter/material.dart';
import 'package:flutter_application_1/QuranApp/Models/SajdaList.dart';
import 'package:flutter_application_1/QuranApp/Widgets/SajdaCustomListTile.dart';
import 'package:flutter_application_1/QuranApp/data/ApiHelper.dart';

class Surahh extends StatefulWidget {
  const Surahh({super.key});

  @override
  State<Surahh> createState() => _SurahhState();
}

class _SurahhState extends State<Surahh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "السور التي تحتوي على سجدات ",
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: FutureBuilder(
          future: ApiHelper.apiHelper.getSajda(),
          builder: (context, AsyncSnapshot<SajdaList> snapshot) {
            if (snapshot.hasError) {
              return Center(
                child: Text('somehting went wrong '),
              );
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            return ListView.builder(
                itemCount: snapshot.data!.sajdaAyat.length,
                itemBuilder: (context, index) => InkWell(
                      child: SajdaCustomListTile(
                        sajdaAyat: snapshot.data!.sajdaAyat[index],
                        index: index,
                        context: context,
                      ),
                    ));
          }),
    );
  }
}
