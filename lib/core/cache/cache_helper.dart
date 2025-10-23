import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late SharedPreferences sharedPreferences;

  static Future<void> cacheIntialzation() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static setTheme({required bool value}) async {
    sharedPreferences.setBool('isDark', value);
  }

  static bool? getTheme() {
    return sharedPreferences.getBool('isDark');
  }
}
