class Api {
  static const String baseUrl = '185.197.250.149:1234';

  static Map<String, String> headers(String? token) {
    final headers = {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    };

    return headers;
  }
}
