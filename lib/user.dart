int userId = 0;

class User {
  final String username;
  final String fullname;
  final String email;
  String password;

  User({
    required this.username,
    required this.fullname,
    required this.email,
    required this.password,
  });

  static List<User> registeredUsers = [
    User(username: 'hai', fullname: 'Trần Đình Đỗ Hải', email: 'hai@gmail.com', password: '123456'),
    User(username: 'hoangpham',fullname: 'Hoang Pham', email: 'hoangpham@gmail.com', password: '123456'),
  ];

  static void registerUser(String username, String fullname, String email, String password) {
    User newUser = User(username: username, fullname: fullname, email: email, password: password);
    registeredUsers.add(newUser);
  }

  static void changePassword(int id, String newPassword) {
    registeredUsers[id].password = newPassword;
    // currentUser.password = newPassword;
  }
}
