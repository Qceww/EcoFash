class User {
  int? userId;
  String? firstName;
  String? lastName;
  String? email;
  String? phone;
  String? password;

  User(this.userId, this.firstName, this.lastName, this.email, this.phone, this.password);

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "firstName": firstName,
        "lastName": lastName,
        "email": email,
        "phone": phone,
        "password": password,
      };

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      json["userId"],
      json["firstName"], 
      json["lastName"], 
      json["email"], 
      json["phone"],
      json["password"]);
  }
}
