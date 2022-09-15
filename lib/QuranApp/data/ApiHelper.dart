import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart' as http;

import 'package:dio/dio.dart';

import 'package:flutter_application_1/QuranApp/Models/AyaOfTheDay.dart';
import 'package:flutter_application_1/QuranApp/Models/JusModel.dart';
import 'package:flutter_application_1/QuranApp/Models/Qari.dart';
import 'package:flutter_application_1/QuranApp/Models/SajdaList.dart';
import 'package:flutter_application_1/QuranApp/Models/SurahTranslation.dart';

import '../Models/Suras.dart';

class ApiHelper {
  static ApiHelper apiHelper = ApiHelper();
  final endPointUrl = 'http://api.alquran.cloud/v1/surah';
  Dio dio = Dio();
  List<Surah> surahs = [];
  List<Qurai> qarilist = [];
  //==================================================================
  Future<List<Qurai>> getQarilist() async {
    String Url = 'http://quranicaudio.com/api/qaris';
    final response = await http.get(Uri.parse(Url));
    jsonDecode(response.body).forEach((element) {
      if (qarilist.length < 20) {
        qarilist.add(Qurai.fromJson(element));
      }
    });
    qarilist.sort(((a, b) => a.name!.compareTo(b.name!)));
    return qarilist;
  }

  //==================================================================
  Future<JusModel> getJuzz(int index) async {
    String Url = 'http://api.alquran.cloud/v1/juz/$index/quran-uthmani';
    final response = await http.get(Uri.parse(Url));
    if (response.statusCode == 200) {
      return JusModel.fromJson(json.decode(response.body));
    } else {
      print('fiailed to lead ');
      throw Exception('feild to lead post');
    }
  }

//==================================================================
  Future<SurahTranslationList> getTranstaltion(
      int index, int translationIndex) async {
    String lan = "";
    if (translationIndex == 0) {
      lan = 'english_saheeh';
    } else if (translationIndex == 1) {
      lan = 'turkish_rwwad';
    } else if (translationIndex == 2) {
      lan = 'hindi_omari';
    } else if (translationIndex == 3) {
      lan = 'spanish_garcia';
    } else if (translationIndex == 4) {
      lan = 'chinese_makin';
    }
    final Url = 'https://quranenc.com/api/v1/translation/sura/$lan/$index';
    var re = await http.get(Uri.parse(Url));

    return SurahTranslationList.fromJson(json.decode(re.body));
  }

//==================================================================
  Future<SajdaList> getSajda() async {
    String Url = 'http://api.alquran.cloud/v1/sajda/en.asad';
    final response = await http.get(Uri.parse(Url));
    if (response.statusCode == 200) {
      return SajdaList.fromJson(json.decode(response.body));
    } else {
      throw Exception('feild to lead post');
    }
  }

//===================================================================
  Future<List<Surah>> getSurah() async {
    final res = await http.get(Uri.parse(endPointUrl));
    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);
      json['data'].forEach((element) {
        if (surahs.length < 114) {
          surahs.add(Surah.fromJson(element));
        }
      });
      print('ol ${surahs.length}');
      return surahs;
    } else {
      throw ('cant get the surch ');
    }
  }
//===================================================================

  Future<AyaOfTheDay> getAyaOfTheDay() async {
    String url =
        'http://api.alquran.cloud/v1/ayah/${random(1, 6237)}/editions/quran-uthmani,en.asad,en.pickthall';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return AyaOfTheDay.fromJson(json.decode(response.body));
    } else {
      print("Faild to load");
      throw Exception('Field to load Post');
    }
  }

  random(min, max) {
    var rn = new Random();
    return min + rn.nextInt(max - min);
  }

/*
  Future<AyaOfTheDay> getAyaOfTheDay() async {
    String url =
        'http://api.alquran.cloud/v1/ayah/${random(1, 6237)}/editions/quran-uthmani,en.asad,en.pickthall';
    final Response response = await dio.get(url);

    print(response.data);

    AyaOfTheDay ayaofday = AyaOfTheDay.fromJson((response.data));
    print('================');
    print(ayaofday.toString());

    return ayaofday;
  }

  random(min, max) {
    var rn = new Random();
    return min + rn.nextInt(max - min);
  }*/

}
