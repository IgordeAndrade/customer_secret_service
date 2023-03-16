import 'package:customer_secret_service/global/domain/value_objects.dart';

import '../../wallet/domain/wallet.dart';

class User {
  User({
    required this.cep,
    required this.dateOfBirth,
    required this.completeName,
    required this.mail,
    required this.password,
    required this.gender,
    required this.id,
    required this.userWallet,
    required this.phoneNumber,
  });

  final String mail;
  final String completeName;
  final DateTime dateOfBirth;
  final String cep;
  final String password;
  final String gender;
  final UniqueID id;
  final Wallet userWallet;
  final phoneNumber;

  @override
  String toString() {
    return 'User( name:$completeName, mail:$mail, cep:$cep, password:$password, dateOfBirth:$dateOfBirth, gender:$gender, id:$id, UserWallet:$userWallet)';
  }

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        id: UniqueID.fromSafeString(json['uid']),
        cep: json['cep'],
        dateOfBirth: json['dateOfBirth'],
        completeName: json['completeName'],
        mail: json['mail'],
        password: json['password'],
        gender: json['gender'],
        phoneNumber: json['phoneNumber'],
        userWallet: json['userWallet']);
  }

  Map<String, dynamic> toJson(User user) {
    return {
      'id': user.id.toString(),
      'completeName': user.completeName,
      'phoneNumber': user.phoneNumber,
      'dateOfBirth': user.dateOfBirth,
      'gender': user.gender,
      'mail': user.mail,
      'password': user.password,
      'userWallet': user.userWallet,
    };
  }

  User copyWith(
    String? mail,
    String? completeName,
    String? phoneNumber,
    DateTime? dateOfBirth,
    String? cep,
    String? password,
    String? gender,
    UniqueID? id,
    Wallet? userWallet,
  ) {
    return User(
        cep: cep ?? this.cep,
        dateOfBirth: dateOfBirth ?? this.dateOfBirth,
        phoneNumber: phoneNumber ?? this.phoneNumber,
        completeName: completeName ?? this.completeName,
        mail: mail ?? this.mail,
        password: password ?? this.password,
        gender: gender ?? this.gender,
        id: id ?? this.id,
        userWallet: userWallet ?? this.userWallet);
  }
}
