import 'package:flutter/material.dart';

import 'package:flutter_application_1/muslim_App/Constants/Constants.dart';
import 'package:flutter_application_1/muslim_App/Models/JusModel.dart';
import 'package:flutter_application_1/muslim_App/Widgets/JuzCustomTile.dart';
import 'package:flutter_application_1/muslim_App/data/ApiHelper.dart';

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
