import 'dart:convert';

import 'package:build_pc_mobile/common/constants/api.dart';
import 'package:build_pc_mobile/profile/domain/repositories/profile_repository.dart';
import 'package:http/http.dart' as http;

class ProfileRepositoryImpl extends ProfileRepository {
  static const _changePassword = '/api/user/user/pass';

  final _client = http.Client();

  @override
  Future<http.Response> changePassword(
    String oldPassword,
    String newPassword,
  ) async {
    final params = {
      "oldPassword": oldPassword,
      "newPassword": newPassword,
    };
    final requestUri = Uri.http(Api.baseUrl, _changePassword);
    final response = await _client.post(
      requestUri,
      headers:await Api.headers(),
      body: jsonEncode(params),
    );

    return response;
  }
}
