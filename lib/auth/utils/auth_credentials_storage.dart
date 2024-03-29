import 'package:build_pc_mobile/auth/data/models/login_user_data.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthCredentialsStorage {
  static const _tokenAccess = 'tokenAccess';

  static String? _tokenAccessGet;

  static String? get tokenAccessGet => _tokenAccessGet;

  static Future<LoginUserData> get savedCredentials async {
    const storage = FlutterSecureStorage();
    _tokenAccessGet = await storage.read(key: _tokenAccess);

    return LoginUserData(_tokenAccessGet);
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
