class AuthService {
  // Simple in-memory user store: email -> {name, password}
  static final Map<String, Map<String, String>> _users = {};

  String? _currentUserEmail;

  Future<bool> signIn(String email, String password) async {
    final u = _users[email];
    await Future.delayed(const Duration(milliseconds: 200));
    if (u == null) return false;
    final ok = u['password'] == password;
    if (ok) _currentUserEmail = email;
    return ok;
  }

  Future<bool> register(String name, String email, String password) async {
    await Future.delayed(const Duration(milliseconds: 200));
    if (_users.containsKey(email)) return false;
    _users[email] = {'name': name, 'password': password};
    _currentUserEmail = email;
    return true;
  }

  Future<void> signOut() async {
    await Future.delayed(const Duration(milliseconds: 100));
    _currentUserEmail = null;
  }

  String? get currentUserEmail => _currentUserEmail;

  String? getName(String? email) => email == null ? null : _users[email]?['name'];
}
