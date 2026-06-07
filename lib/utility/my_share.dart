import 'dart:convert';

import 'package:inter_day12/model/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyShare {
  static SharedPreferences? _sharedPreferences;
  static void init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }
  static void saveUserData(UserModel userModel){
    _sharedPreferences?.setString('user_model', jsonEncode(userModel));
  }
  static void saveToken(String token){
    _sharedPreferences?.setString('token', token);
  }
  static String getToken(){
    return _sharedPreferences?.getString('token') ?? '';
  }
}