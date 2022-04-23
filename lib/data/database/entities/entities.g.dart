// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserEntity _$$_UserEntityFromJson(Map<String, dynamic> json) =>
    _$_UserEntity(
      id: json['id'] as String,
      title: json['title'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      picture: json['picture'] as String,
      gender: json['gender'] as String?,
      email: json['email'] as String?,
      dateOfBirth: json['date_of_birth'] as String?,
      registerDate: json['register_date'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$$_UserEntityToJson(_$_UserEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'picture': instance.picture,
      'gender': instance.gender,
      'email': instance.email,
      'date_of_birth': instance.dateOfBirth,
      'register_date': instance.registerDate,
      'phone': instance.phone,
    };
