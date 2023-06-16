import 'package:build_pc_mobile/auth/domain/entities/user/user.dart';
import 'package:build_pc_mobile/profile/data/models/profile_params.dart';

abstract class UserRepository {
  Stream<User?> get currentUser;

  Stream<ProfileParams?> get currentProfileParams;

  Future<void> registerUser(User userData);

  Future<void> loginUser(
      String username,
      String password,
      );

  Future<void> getCurrentUser();

  Future<void> updateProfile(String name, String username, String email);

  Future<void> deleteUser();

  Future<void> signOut();
}
