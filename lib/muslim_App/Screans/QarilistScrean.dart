import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/muslim_App/Models/Qari.dart';
import 'package:flutter_application_1/muslim_App/Screans/AudioSurahScrean.dart';
import 'package:flutter_application_1/muslim_App/Widgets/QariCustomTile.dart';
import 'package:flutter_application_1/muslim_App/data/ApiHelper.dart';
import 'package:flutter_application_1/muslim_App/data/Provider/ApiProvider.dart';
import 'package:provider/provider.dart';

class QarilistScrean extends StatefulWidget {
  const QarilistScrean({super.key});

  @override
  State<QarilistScrean> createState() => _QarilistScreanState();
}

class _QarilistScreanState extends State<QarilistScrean> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Qari \s'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20, left: 12, right: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 12,
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Row(
                    children: [Text('Search'), Spacer(), Icon(Icons.search)],
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          blurRadius: 1,
                          spreadRadius: 0.0,
                          offset: Offset(0, 1))
                    ]),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                  child: FutureBuilder(
                future: ApiHelper.apiHelper.getQarilist(),
                builder: (context, AsyncSnapshot<List<Qurai>> snapshot) {
                  if (snapshot.hasError) {
                    return Center(
                      child: Text("data not found"),
                    );
                  }
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return QariCustomTile(
                          qari: snapshot.data![index],
                          ontap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AudioSurahScrean(
                                        qari: snapshot.data![index])));
                          });
                    },
                  );
                },
              ))
            ],
          ),
        ),
      ),
    );
  }
}
