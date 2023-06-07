import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:build_pc_mobile/auth/data/models/login_user_data.dart';
import 'package:build_pc_mobile/auth/domain/entities/user/user.dart';
import 'package:build_pc_mobile/auth/domain/repositories/user_repository.dart';
import 'package:build_pc_mobile/auth/utils/auth_credentials_storage.dart';
import 'package:build_pc_mobile/common/constants/api.dart';
import 'package:build_pc_mobile/common/utils/http_response_utils.dart';
import 'package:http/http.dart' as http;

class AuthRepositoryImpl extends UserRepository {
  static const _loginPath = '/api/auth/signin';
  static const _registerPath = '/api/auth/signup';
  static const _updateUserPath = '/api/user';
  static const headers = {
    'Content-type': 'application/json',
  };

  final _client = http.Client();

  final credentialsStorage = AuthCredentialsStorage();

  final _currentUserController = StreamController<User?>();

  @override
  Stream<User?> get currentUser => _currentUserController.stream;

  @override
  Future<void> loginUser(String? username, String? password) async {
    final params = {
      'username': username,
      'password': password,
    };
    final requestUri = Uri.http(Api.baseUrl, _loginPath);
    final response = await _client.post(
      requestUri,
      headers: headers,
      body: jsonEncode(params),
    );
    _processLoginResponse(response);
  }

  @override
  Future<void> registerUser(User userData) async {
    final requestBody = userData.toJson();
    final requestUri = Uri.http(Api.baseUrl, _registerPath);
    final response = await _client.post(
      requestUri,
      headers: headers,
      body: jsonEncode(requestBody),
    );
    _processRegisterResponse(response);
  }

  @override
  Future<void> updateProfile(User userData) async {
    final requestBody = userData.toJson();
    final requestUri = Uri.http(Api.baseUrl, _updateUserPath);
    final response = await _client.put(
      requestUri,
      body: jsonEncode(requestBody),
    );
    _processUpdateProfileResponse(response);

    await loginUser(userData.email, userData.password);
  }

  void dispose() {
    _currentUserController.close();
  }

  void _processUpdateProfileResponse(http.Response response) {
    if (response.statusCode != HttpStatus.ok) {
      HttpResponseUtils.processStatusCodeFailed(response);
    }
  }

  void _processLoginResponse(http.Response response) {
    if (response.statusCode == HttpStatus.ok) {
      _processLoginResponseOk(response);
    } else {
      HttpResponseUtils.processStatusCodeFailed(response);
    }
  }

  void _processRegisterResponse(http.Response response) {
    if (response.statusCode == HttpStatus.ok) {
      _processRegisterResponseOK(response);
    } else {
      HttpResponseUtils.processStatusCodeFailed(response);
    }
  }

  void _processLoginResponseOk(http.Response response) {
    final decodedResponse = HttpResponseUtils.parseHttpResponse(response);
    final user = User.fromJson(decodedResponse);
    final token = decodedResponse["accessToken"];
    AuthCredentialsStorage.saveCredentials(LoginUserData(token.toString()));

    _currentUserController.sink.add(user);
  }

  void _processRegisterResponseOK(http.Response response) {
    final decodedResponse = HttpResponseUtils.parseHttpResponse(response);
    final user = User.fromJson(decodedResponse);
    _currentUserController.sink.add(user);
  }

  @override
  Future<void> signOut() async {
    _currentUserController.sink.add(null);
  }
}
