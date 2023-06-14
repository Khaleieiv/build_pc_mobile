import 'package:build_pc_mobile/common/utils/custom_exception.dart';
import 'package:build_pc_mobile/profile/data/repositories/profile_repository_impl.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class ProfileNotifier extends ChangeNotifier {
  final ProfileRepositoryImpl _profileRepositoryImpl;

  CustomException _profileException = CustomException(null);

  CustomException get profileException => _profileException;

  ProfileNotifier(this._profileRepositoryImpl);

  Future<http.Response?> changePassword(String oldPassword,
      String newPassword,) async {
    _handleAuthError(null);
    notifyListeners();
    try {
      return await _profileRepositoryImpl.changePassword(
        oldPassword, newPassword,
      );
    } on CustomResponseException catch (e) {
      _handleAuthError(e);
      rethrow;
    } finally {
      notifyListeners();
    }
  }

  void _handleAuthError(Exception? exception) {
    _profileException = CustomException(exception);
  }
}
