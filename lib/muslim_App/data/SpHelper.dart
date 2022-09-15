import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SpHelper extends ChangeNotifier {
  static SpHelper spHelper = SpHelper();
  static bool alreadyUsed = false;
  static void getData() async {
    final pref = await SharedPreferences.getInstance();
    alreadyUsed = pref.getBool("alreadyUsed") ?? false;
  }

  static void setData() async {
    final pref = await SharedPreferences.getInstance();
    pref.setBool("alreadyUsed", false);
  }
}
