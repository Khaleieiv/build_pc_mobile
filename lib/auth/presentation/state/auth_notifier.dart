import 'dart:async';

import 'package:build_pc_mobile/auth/data/models/login_user_data.dart';
import 'package:build_pc_mobile/auth/data/repositories/auth_repository_impl.dart';
import 'package:build_pc_mobile/auth/domain/entities/user/user.dart';
import 'package:build_pc_mobile/auth/utils/auth_credentials_storage.dart';
import 'package:build_pc_mobile/auth/utils/user_preferences.dart';
import 'package:build_pc_mobile/common/utils/custom_exception.dart';
import 'package:flutter/material.dart';

class AuthNotifier extends ChangeNotifier {
  User? _user;

  StreamSubscription<User?>? _userSubscription;

  final AuthRepositoryImpl _authRepository;

  CustomException _authException = CustomException(null);

  User? get currentUser => _user;

  bool get isLoggedIn => _user != null;

  CustomException get authException => _authException;

  AuthNotifier(this._authRepository) {
    subscribeToAuthUpdates(_authRepository.currentUser);
  }

  Future<void> registerAccount(
    String name,
    String username,
    String password,
    String email,
  ) async {
    _handleAuthError(null);
    notifyListeners();
    try {
      await _authRepository.registerUser(
        User(
          id: null,
          name: name,
          username: username,
          password: password,
          role: null,
          email: email,
        ),
      );
    } on CustomResponseException catch (e) {
      _handleAuthError(e);
      rethrow;
    } finally {
      notifyListeners();
    }
  }

  Future<void> signInWithEmail(
    String username,
    String password,
  ) async {
    _handleAuthError(null);
    notifyListeners();
    try {
      await _authRepository.loginUser(
        username,
        password,
      );
    } on CustomResponseException catch (e) {
      _handleAuthError(e);
      rethrow;
    } finally {
      notifyListeners();
    }
  }

  Future<void> updateProfile(
    int id,
    String name,
    String username,
    String password,
    String role,
    String email,
  ) async {
    _handleAuthError(null);
    notifyListeners();
    try {
      await _authRepository.updateProfile(
        User(
          id: id,
          name: name,
          username: username,
          password: password,
          role: role,
          email: email,
        ),
      );
    } on CustomResponseException catch (e) {
      _handleAuthError(e);
      rethrow;
    } finally {
      notifyListeners();
    }
  }

  Future<void> signOut() async {
    _handleAuthError(null);
    await AuthCredentialsStorage.removeCredentials;
    await UserPreferences.removeUser();
    await _authRepository.signOut();
  }

  Future<void> _userStreamListener(User? user) async {
    _user = user;
    _handleAuthError(null);
    await UserPreferences.saveUser(_user);
    notifyListeners();
  }

  Future<void> subscribeToAuthUpdates(Stream<User?> userStream) async {
    _userSubscription = userStream.listen(_userStreamListener);
  }

  Future<bool> trySignInWithStoredCredentials() async {
    LoginUserData savedCredentials;
    var checkLogin = false;
    try {
      savedCredentials = await AuthCredentialsStorage.savedCredentials;
      if (savedCredentials.isValid) {
        checkLogin = true;
        final storedUser = await UserPreferences.getUser();
        if (storedUser != null) {
          _user = storedUser;
        }
      }
    } finally {
      notifyListeners();
    }

    return checkLogin;
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
