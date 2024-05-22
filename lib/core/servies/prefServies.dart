import 'package:shared_preferences/shared_preferences.dart';

class PrefServies {
  static late SharedPreferences _sharedPreferences;

  static Future<PrefServies> initSharedPref() async {
    _sharedPreferences = await SharedPreferences.getInstance();
    return PrefServies();
  }

 setToken(String token) => _sharedPreferences.setString('token', token);
  String? getToken() => _sharedPreferences.getString("token");
}
