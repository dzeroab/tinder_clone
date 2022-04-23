part of 'domain.dart';

//
class User {
  final String id;
  final String title;
  final String firstName;
  final String lastName;
  final String picture;
  final String? gender;
  final String? email;
  final String? dateOfBirth;
  final String? registerDate;
  final String? phone;

  User({
    required this.id,
    required this.title,
    required this.firstName,
    required this.lastName,
    required this.picture,
    this.gender,
    this.email,
    this.dateOfBirth,
    this.registerDate,
    this.phone,
  });
}

extension UserEx on User {
  int? get age {
    final date = dateOfBirth != null ? DateTimeUtils.revertToUTC(dateOfBirth!) : null;

    return date == null ? null : DateTime.now().difference(date).inDays ~/ 365;
  }
}

extension UserEntityEx on UserEntity {
  User mapToUser() => User(
        id: id,
        title: title,
        firstName: firstName,
        lastName: lastName,
        picture: picture,
        dateOfBirth: dateOfBirth,
        email: email,
        gender: gender,
        phone: phone,
        registerDate: registerDate,
      );
}
