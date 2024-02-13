class User {
  String? firstName;
  String? lastName;
  String? email;
  String? phone;
  String? password;

  User(this.firstName, this.lastName, this.email, this.phone, this.password);

  Map<String, dynamic> toJson() => {
        "firstName": firstName,
        "lastName": lastName,
        "email": email,
        "phone": phone,
        "password": password,
      };

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      json["firstName"], 
      json["lastName"], 
      json["email"], 
      json["phone"],
      json["password"]);
  }
}
