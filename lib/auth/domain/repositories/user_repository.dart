import 'package:build_pc_mobile/auth/domain/entities/user/user.dart';

abstract class UserRepository {
  Stream<User?> get currentUser;

  Future<void> registerUser(User userData);

  Future<void> loginUser(
      String username,
      String password,
      );

  Future<void> updateProfile(User userData);

  Future<void> signOut();
}
