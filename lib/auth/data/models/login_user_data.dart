class LoginUserData {
  final String? tokenAccess;

  bool get isValid => tokenAccess != null;

  const LoginUserData(this.tokenAccess);
}
