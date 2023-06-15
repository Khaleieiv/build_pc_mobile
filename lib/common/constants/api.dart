import 'package:build_pc_mobile/auth/utils/user_preferences.dart';

class Api {
  static const String baseUrl = '185.197.250.149:1234';

  static Map<String, String> headers() {
    //final savedCredentials = AuthCredentialsStorage.tokenAccessGet;
    final savedCredentials = UserPreferences.tokenAccessGet;
    final headers = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $savedCredentials',
    };

    return headers;
  }
}
