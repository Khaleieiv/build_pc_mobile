import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:build_pc_mobile/auth/data/models/login_user_data.dart';
import 'package:build_pc_mobile/auth/domain/entities/user/user.dart';
import 'package:build_pc_mobile/auth/domain/repositories/user_repository.dart';
import 'package:build_pc_mobile/auth/utils/auth_credentials_storage.dart';
import 'package:build_pc_mobile/auth/utils/user_preferences.dart';
import 'package:build_pc_mobile/common/constants/api.dart';
import 'package:build_pc_mobile/common/utils/http_response_utils.dart';
import 'package:build_pc_mobile/profile/data/models/profile_params.dart';
import 'package:http/http.dart' as http;

class AuthRepositoryImpl extends UserRepository {
  static const _loginPath = '/api/auth/signin';
  static const _registerPath = '/api/auth/signup';
  static const _updateUserPath = '/api/user/user';
  static const headers = {
    'Content-type': 'application/json',
  };

  final _client = http.Client();

  final credentialsStorage = AuthCredentialsStorage();

  final _currentUserController = StreamController<User?>();

  final _currentProfileParamsController = StreamController<ProfileParams?>();

  @override
  Stream<ProfileParams?> get currentProfileParams =>
      _currentProfileParamsController.stream;

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
  Future<void> registerUser(
    String username,
    String name,
    String email,
    String? password,
  ) async {
    final params = {
      "username": username,
      "name": name,
      "email": email,
      "password": password,
    };
    final requestUri = Uri.http(Api.baseUrl, _registerPath);
    final response = await _client.post(
      requestUri,
      headers: headers,
      body: jsonEncode(params),
    );
    _processRegisterResponse(response);
  }

  @override
  Future<void> getCurrentUser() async {
    final requestUri = Uri.http(Api.baseUrl, _updateUserPath);
    final response = await _client.get(
      requestUri,
      headers: await Api.headers(),
    );
    _processGetUserProfileResponse(response);
  }

  @override
  Future<void> updateProfile(String name, String username, String email) async {
    final _params = {
      "name": name,
      "username": username,
      "email": email,
    };
    final requestUri = Uri.http(Api.baseUrl, _updateUserPath);
    final response = await _client.put(
      requestUri,
      headers: await Api.headers(),
      body: jsonEncode(_params),
    );
    _processUpdateProfileResponse(response);

    await getCurrentUser();
  }

  @override
  Future<void> deleteUser() async {
    final requestUri = Uri.http(Api.baseUrl, _updateUserPath);
    await _client.delete(
      requestUri,
      headers: await Api.headers(),
    );
  }

  void _processGetUserProfileResponse(http.Response response) {
    if (response.statusCode == HttpStatus.ok) {
      _processGetUserResponseOk(response);
    } else {
      HttpResponseUtils.processStatusCodeFailed(response);
    }
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
    if (response.statusCode != HttpStatus.ok) {
      HttpResponseUtils.processStatusCodeFailed(response);
    }
  }

  void _processGetUserResponseOk(http.Response response) {
    final decodedResponse = HttpResponseUtils.parseHttpResponse(response);
    final user = ProfileParams.fromJson(decodedResponse);
    _currentProfileParamsController.sink.add(user);
  }

  Future<void> _processLoginResponseOk(http.Response response) async {
    final decodedResponse = HttpResponseUtils.parseHttpResponse(response);
    final user = User.fromJson(decodedResponse);
    final token = decodedResponse["accessToken"];
    await UserPreferences.saveToken(LoginUserData(token.toString()));
    // AuthCredentialsStorage.saveCredentials(LoginUserData(token.toString()));
    _currentUserController.sink.add(user);
  }

  // void _processRegisterResponseOK(http.Response response) {
  //   final decodedResponse = HttpResponseUtils.parseHttpResponse(response);
  //   final user = User.fromJson(decodedResponse);
  //   _currentUserController.sink.add(user);
  // }

  @override
  Future<void> signOut() async {
    await UserPreferences.removeToken();
    _currentUserController.sink.add(null);
    _currentProfileParamsController.sink.add(null);
  }

  void dispose() {
    _currentUserController.close();
    _currentProfileParamsController.close();
  }
}
