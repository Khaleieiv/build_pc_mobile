import 'dart:async';

import 'package:build_pc_mobile/auth/domain/entities/user/user.dart';
import 'package:build_pc_mobile/auth/domain/repositories/user_repository.dart';

class AuthRepository extends UserRepository {

  final _currentUserController = StreamController<User?>();

  @override
  Stream<User?> get currentUser => _currentUserController.stream;

  @override
  Future<void> loginUser(String email, String password) {
    // TODO: implement loginUser
    throw UnimplementedError();
  }

  @override
  Future<void> registerUser(User userData) {
    // TODO: implement registerUser
    throw UnimplementedError();
  }

  @override
  Future<void> updateProfile(User userData) {
    // TODO: implement updateProfile
    throw UnimplementedError();
  }

  void dispose() {
    _currentUserController.close();
  }
}
