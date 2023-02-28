class User {
  User({
    required this.cep,
    required this.dateOfBirth,
    required this.completeName,
    required this.mail,
    required this.password,
  });

  String mail;
  String completeName;
  DateTime dateOfBirth;
  String cep;
  String password;
}
