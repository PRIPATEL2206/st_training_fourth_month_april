import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:screen_assingment3_5/models/User.dart';

class UserControler {
  static Future<List<User>> loadUser() async {
    final String jsonString =
        await rootBundle.loadString('assets/data/userData.json');
    print("ok");
    final data = jsonDecode(jsonString) as List;
    return data.map((e) => User.fromJson(e)).toList();
  }
}
