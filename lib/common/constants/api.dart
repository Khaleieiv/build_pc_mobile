import 'package:build_pc_mobile/auth/utils/user_preferences.dart';

class Api {
  static const String baseUrl = '185.197.250.149:1234';

  static Future<Map<String, String>> headers() async {
    //final savedCredentials = AuthCredentialsStorage.tokenAccessGet;
    final savedCredentials = await UserPreferences.getToken;
    final headers = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $savedCredentials',
    };

    return headers;
  }
}
