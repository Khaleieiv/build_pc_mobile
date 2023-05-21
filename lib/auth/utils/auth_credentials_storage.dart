import 'package:build_pc_mobile/auth/data/models/login_user_data.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthCredentialsStorage {
  static const _loginKey = 'login';
  static const _passwordKey = 'password';

  Future<LoginUserData> get savedCredentials async {
    const storage = FlutterSecureStorage();
    final login = await storage.read(key: _loginKey);
    final password = await storage.read(key: _passwordKey);

    return LoginUserData(login, password);
  }

  Future<bool> saveCredentials(
    LoginUserData credentials,
  ) async {
    if (!credentials.isValid) return false;
    const storage = FlutterSecureStorage();
    final loginSaveFuture =
        storage.write(key: _loginKey, value: credentials.login);
    final passwordSaveFuture =
        storage.write(key: _passwordKey, value: credentials.password);

    bool caughtErrors = false;

    try {
      await Future.wait([loginSaveFuture, passwordSaveFuture],
          eagerError: true,);
    } catch (error) {
      caughtErrors = true;
    }

    return caughtErrors;
  }
}
