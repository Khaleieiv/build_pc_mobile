import 'package:build_pc_mobile/auth/domain/entities/user/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {
  static Future<void> saveUser(User? user) async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setInt("id", user?.id ?? 0);
    await prefs.setString("name", user?.name ?? '');
    await prefs.setString("email", user?.email ?? "");
    await prefs.setString("username", user?.username ?? "");
  }

  static Future<User?> getUser() async {
    final prefs = await SharedPreferences.getInstance();

    final id = prefs.getInt("id");
    final name = prefs.getString("name");
    final email = prefs.getString("email");
    final username = prefs.getString("username");
    User? user;
    if (name != null && username != null && email != null) {
      user = User(
        id: id,
        name: name,
        username: username,
        email: email,
        password: null,
        role: null,
      );
    }

    return user;
  }

  static Future<void> removeUser() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove("id");
    await prefs.remove("name");
    await prefs.remove("email");
    await prefs.remove("username");
  }
}
