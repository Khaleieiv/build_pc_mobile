import 'dart:async';

import 'package:build_pc_mobile/auth/data/models/login_user_data.dart';
import 'package:build_pc_mobile/auth/domain/entities/user/user.dart';
import 'package:build_pc_mobile/auth/domain/repositories/user_repository.dart';
import 'package:build_pc_mobile/auth/utils/auth_credentials_storage.dart';
import 'package:build_pc_mobile/common/utils/custom_exception.dart';
import 'package:flutter/material.dart';

class AuthNotifier extends ChangeNotifier {
  User? _user;

   StreamSubscription? _userSubscription;

  final UserRepository _authRepository;

  CustomException _authException = CustomException(null);

  User? get currentUser => _user;

  bool get isLoggedIn => _user != null;

  CustomException get authException => _authException;

  AuthNotifier(this._authRepository) {
    subscribeToAuthUpdates(_authRepository.currentUser);
  }

  Future<void> signOut() async {
    _handleAuthError(null);
    notifyListeners();
  }

  Future<void> _userStreamListener(User? user) async {
    _user = user;
    if (user != null) {
      _handleAuthError(null);
      await AuthCredentialsStorage()
          .saveCredentials(LoginUserData(user.email, user.password));
    }
    notifyListeners();
  }

  Future<void> subscribeToAuthUpdates(Stream<User?> userStream) async {
    _userSubscription = userStream.listen(_userStreamListener);
    await _trySignInWithStoredCredentials();
  }

  Future<void> _trySignInWithStoredCredentials() async {
    final credentialsStorage = AuthCredentialsStorage();
    LoginUserData savedCredentials;
    try {
      savedCredentials = await credentialsStorage.savedCredentials;
      if (savedCredentials.isValid) {
        await _authRepository.loginUser(
          (savedCredentials.login != null) as String,
          (savedCredentials.password != null) as String,
        );
      }
    } finally {
      notifyListeners();
    }
  }

  void _handleAuthError(Exception? exception) {
    _authException = CustomException(exception);
  }

  @override
  void dispose() {
    _userSubscription?.cancel();
    super.dispose();
  }
}
