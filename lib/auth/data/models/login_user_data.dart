class LoginUserData {
  final String? login;
  final String? password;

  bool get isValid => login != null && password != null;

  const LoginUserData(this.login, this.password);
}
