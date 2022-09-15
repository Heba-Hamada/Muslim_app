import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/muslim_App/Models/AyaOfTheDay.dart';
import 'package:flutter_application_1/muslim_App/Models/JusModel.dart';
import 'package:flutter_application_1/muslim_App/Models/Qari.dart';
import 'package:flutter_application_1/muslim_App/Models/SajdaList.dart';
import 'package:flutter_application_1/muslim_App/Models/SurahTranslation.dart';
import 'package:flutter_application_1/muslim_App/Models/Suras.dart';
import 'package:flutter_application_1/muslim_App/data/ApiHelper.dart';

class ApiProvider extends ChangeNotifier {
  List<AyaOfTheDay> ayas = [];
  List<Surah> surahs = [];
  List<Qurai> qarilist = [];
  static ApiProvider apiProvider = ApiProvider();

  getAyaOfTheDay() async {
    AyaOfTheDay ayaOfTheDay = await ApiHelper.apiHelper.getAyaOfTheDay();
    notifyListeners();
    // ApiHelper.apiHelper.getAyaOfTheDay().then((value) => ayaOfTheDay = value);
  }

//getQarilist

  getQarilist() async {
    qarilist = await ApiHelper.apiHelper.getQarilist();
    notifyListeners();
  }

//getJuzz
  getJuzz(int index) async {
    JusModel? JUZ = await ApiHelper.apiHelper.getJuzz(index);
    notifyListeners();
  }

//getTranstaltion
  getTranstaltion(int index, int trans) async {
    SurahTranslationList surahTranslationList =
        await ApiHelper.apiHelper.getTranstaltion(index, trans);
    notifyListeners();
  }

  //getSajda
  getSajda() async {
    SajdaList sajdaList = await ApiHelper.apiHelper.getSajda();
    notifyListeners();
  }
}
