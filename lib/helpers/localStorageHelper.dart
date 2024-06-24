import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageHelper {
  static Future<bool> setItem(String key, String val) async {
    final prefs = await SharedPreferences.getInstance();
    bool stored = await prefs.setString(key, val);
    return stored;
  }

  static getItem(String key) async {
    final prefs = await SharedPreferences.getInstance();
    final String? val = prefs.getString(key);
    return val ?? '';
  }

  static removeItem(String key) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(key);
  }

  static clearAllPreferencesData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
}
