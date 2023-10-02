class User {
  String firstname, lastname, email;

  User(this.firstname, this.lastname, this.email);

  User.fromJson(Map<String, dynamic> json)
      : firstname = json['firstname'],
        lastname = json['lastname'],
        email = json['email'];


// obj to json
  Map<String, dynamic> toJson() =>
      {'firstname': firstname, 'lastname': lastname, 'email': email};
}
