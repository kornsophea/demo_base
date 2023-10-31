import 'package:shared_preferences/shared_preferences.dart';

class LocalData{
  static const String token = "token";
  static Future<void> setToken(String userToken) async {
    var sharePreference = await SharedPreferences.getInstance();
    await sharePreference.setString(token, userToken);
  }

  static Future<Object> getToken() async {
    var sharePreference = await SharedPreferences.getInstance();
    return sharePreference.get(token) ?? "";
  }
}