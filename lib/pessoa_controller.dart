import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class PessoaCtrl {
  List pessoas = [];
  add(String key, value) async {
    pessoas.add(value);
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(key, json.encode(pessoas));
  }

  read(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return json.decode(prefs.getStringList(key).toString());
  }

  remove(String key) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove(key);
  }
}
