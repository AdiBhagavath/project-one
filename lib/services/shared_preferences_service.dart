// import 'package:shared_preferences/shared_preferences.dart';

// class SharedPreferencesService {
//   static const String _usernameKey = 'username';
//   static const String _passwordKey = 'password';

//   static Future<void> saveCredentials(String username, String password) async {
//     final SharedPreferences prefs = await SharedPreferences.getInstance();
//     await prefs.setString(_usernameKey, username);
//     await prefs.setString(_passwordKey, password);
//   }

//   static Future<Map<String, String>> getCredentials() async {
//     final SharedPreferences prefs = await SharedPreferences.getInstance();
//     final String? username = prefs.getString(_usernameKey);
//     final String? password = prefs.getString(_passwordKey);
//     return {
//       'username': username ?? '',
//       'password': password ?? '',
//     };
//   }
// }
