import 'dart:convert';
import 'package:build_pc_mobile/common/utils/custom_exception.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

class HttpResponseUtils {
  static Map<String, dynamic> parseHttpResponse(Response response) {
    final decodedString = utf8.decode(response.bodyBytes);

    return jsonDecode(decodedString) as Map<String, dynamic>;
  }

  static List<Map<String, dynamic>> parseHttpResponseAsList(Response response) {
    final decodedString = utf8.decode(response.bodyBytes);
    final dynamicList = jsonDecode(decodedString) as List<dynamic>;

    return dynamicList.map((e) => e as Map<String, dynamic>).toList();
  }

  static void processStatusCodeFailed(http.Response response) {
    final bodyMap = HttpResponseUtils.parseHttpResponse(response);
    final parsedReason = bodyMap["message"];
    throw CustomResponseException(
      parsedReason.toString(),
    );
  }
}
