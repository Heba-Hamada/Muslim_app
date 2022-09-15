import 'package:flutter/material.dart';
import 'package:flutter_application_1/QuranApp/Constants/Constants.dart';
import 'package:flutter_application_1/QuranApp/data/ApiHelper.dart';

import '../Models/JusModel.dart';
import '../Widgets/JuzCustomTile.dart';

class JuzScrean extends StatelessWidget {
  const JuzScrean({super.key});
  static const String id = 'Juz_screan';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: FutureBuilder<JusModel>(
        future: ApiHelper.apiHelper.getJuzz(Constants.juzIndex!),
        builder: (context, AsyncSnapshot<JusModel> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasData) {
            print('${snapshot.data!.juzAyahs.length} lenght');
            return ListView.builder(
              itemCount: snapshot.data!.juzAyahs.length,
              itemBuilder: (context, index) {
                return JuzCustomTile(
                    list: snapshot.data!.juzAyahs, index: index);
              },
            );
          } else {
            return Center(
              child: Text('data not found'),
            );
          }
        },
      )),
    );
  }
}
