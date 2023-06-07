import 'package:build_pc_mobile/auth/data/models/login_user_data.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthCredentialsStorage {
  static const _tokenAccess = 'tokenAccess';

  static Future<LoginUserData> get savedCredentials async {
    const storage = FlutterSecureStorage();
    final tokenAccess = await storage.read(key: _tokenAccess);

    return LoginUserData(tokenAccess);
  }

  static Future<String?> get tokenSaved async {
    final savedCredentials = await AuthCredentialsStorage.savedCredentials;

    return savedCredentials.tokenAccess;
  }

  static Future<void> get removeCredentials async {
    const storage = FlutterSecureStorage();
    await storage.delete(key: _tokenAccess);
  }

  static Future<bool> saveCredentials(
    LoginUserData credentials,
  ) async {
    if (!credentials.isValid) return false;
    const storage = FlutterSecureStorage();
    final tokenAccessSaveFuture =
        storage.write(key: _tokenAccess, value: credentials.tokenAccess);

    bool caughtErrors = false;

    try {
      await Future.wait(
        [tokenAccessSaveFuture],
        eagerError: true,
      );
    } catch (error) {
      caughtErrors = true;
    }

    return caughtErrors;
  }
}
