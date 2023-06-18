import 'dart:async';

import 'package:build_pc_mobile/auth/data/repositories/auth_repository_impl.dart';
import 'package:build_pc_mobile/auth/domain/entities/user/user.dart';
import 'package:build_pc_mobile/auth/utils/user_preferences.dart';
import 'package:build_pc_mobile/common/utils/custom_exception.dart';
import 'package:build_pc_mobile/profile/data/models/profile_params.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthNotifier extends ChangeNotifier {
  User? _user;

  ProfileParams? _profileParams;

  StreamSubscription<User?>? _userSubscription;
  StreamSubscription<ProfileParams?>? _profileParamsSubscription;

  final AuthRepositoryImpl _authRepository;

  CustomException _authException = CustomException(null);

  User? get currentUser => _user;

  ProfileParams? get currentProfileParams => _profileParams;

  bool get isLoggedIn => _user != null;

  CustomException get authException => _authException;

  AuthNotifier(this._authRepository) {
    subscribeToAuthUpdates(_authRepository.currentUser);
    subscribeToProfileUpdates(_authRepository.currentProfileParams);
  }

  Future<void> registerAccount(
    String username,
    String name,
    String email,
    String password,
  ) async {
    _handleAuthError(null);
    notifyListeners();
    try {
      await _authRepository.registerUser(
        username,
        name,
        email,
        password,
      );
    } on CustomResponseException catch (e) {
      _handleAuthError(e);
      rethrow;
    } finally {
      notifyListeners();
    }
  }

  Future<void> signInWithEmail(
    String? username,
    String? password,
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

  Future<void> getCurrentUser() async {
    _handleAuthError(null);
    notifyListeners();
    try {
      await _authRepository.getCurrentUser();
      notifyListeners();
    } on CustomResponseException catch (e) {
      _handleAuthError(e);
      rethrow;
    } finally {
      notifyListeners();
    }
  }

  Future<void> deleteUser() async {
    _handleAuthError(null);
    try {
      await _authRepository.deleteUser();
      await signOut();
      notifyListeners();
    } on CustomResponseException catch (e) {
      _handleAuthError(e);
      rethrow;
    } finally {
      notifyListeners();
    }
  }

  Future<void> updateProfile(
    String name,
      String username,
    String email,
  ) async {
    _handleAuthError(null);
    notifyListeners();
    try {
      await _authRepository.updateProfile(
        name,
        username,
        email,
      );
      await getCurrentUser();
      notifyListeners();
    } on CustomResponseException catch (e) {
      _handleAuthError(e);
      rethrow;
    } finally {
      notifyListeners();
    }
  }

  Future<void> signOut() async {
    _handleAuthError(null);
    // await AuthCredentialsStorage.removeCredentials;
    await UserPreferences.removeToken();
    await UserPreferences.removeUser();
    await _authRepository.signOut();
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
    notifyListeners();
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

  Future<void> _profileParamsStreamListener(
    ProfileParams? profileParams,
  ) async {
    _profileParams = profileParams;
    _handleAuthError(null);
    notifyListeners();
  }

  Future<void> subscribeToProfileUpdates(
    Stream<ProfileParams?> profileStream,
  ) async {
    _profileParamsSubscription =
        profileStream.listen(_profileParamsStreamListener);
  }

  Future<bool> trySignInWithStoredCredentials() async {
    var checkLogin = false;
    try {
      //savedCredentials = await AuthCredentialsStorage.savedCredentials;
      final token = await UserPreferences.getToken;
      if (token != null) {
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
    _profileParamsSubscription?.cancel();
    super.dispose();
  }
}
