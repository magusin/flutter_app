class User {
  String? id;
  String email;
  String username;
  String password;
  User(
      {required this.email,
      required this.username,
      required this.password,
      this.id});

  User.fromJson(Map<String, dynamic> json)
      : id = json['_id'],
        username = json['username'],
        email = json['email'],
        password = json['password'];
}
