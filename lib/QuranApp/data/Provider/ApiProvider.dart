import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/QuranApp/Models/AyaOfTheDay.dart';
import 'package:flutter_application_1/QuranApp/data/ApiHelper.dart';

class ApiProvider extends ChangeNotifier {
  List<AyaOfTheDay> ayas = [];
  static ApiProvider apiProvider = ApiProvider();

  getAyaOfTheDay(AyaOfTheDay ayaOfTheDay) async {
    AyaOfTheDay ayaOfTheDay = await ApiHelper.apiHelper.getAyaOfTheDay();
    notifyListeners();
    // ApiHelper.apiHelper.getAyaOfTheDay().then((value) => ayaOfTheDay = value);
  }
}
