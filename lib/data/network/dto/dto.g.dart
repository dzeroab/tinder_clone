// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserPreviewDto _$$_UserPreviewDtoFromJson(Map<String, dynamic> json) =>
    _$_UserPreviewDto(
      id: json['id'] as String,
      title: json['title'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      picture: json['picture'] as String,
    );

Map<String, dynamic> _$$_UserPreviewDtoToJson(_$_UserPreviewDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'picture': instance.picture,
    };

_$_GetUsersResponse _$$_GetUsersResponseFromJson(Map<String, dynamic> json) =>
    _$_GetUsersResponse(
      total: json['total'] as int,
      page: json['page'] as int,
      limit: json['limit'] as int,
      data: (json['data'] as List<dynamic>)
          .map((e) => UserPreviewDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GetUsersResponseToJson(_$_GetUsersResponse instance) =>
    <String, dynamic>{
      'total': instance.total,
      'page': instance.page,
      'limit': instance.limit,
      'data': instance.data.map((e) => e.toJson()).toList(),
    };

_$_UserDto _$$_UserDtoFromJson(Map<String, dynamic> json) => _$_UserDto(
      id: json['id'] as String,
      title: json['title'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      gender: json['gender'] as String,
      email: json['email'] as String,
      dateOfBirth: json['dateOfBirth'] as String,
      registerDate: json['registerDate'] as String,
      phone: json['phone'] as String,
      picture: json['picture'] as String,
    );

Map<String, dynamic> _$$_UserDtoToJson(_$_UserDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'gender': instance.gender,
      'email': instance.email,
      'dateOfBirth': instance.dateOfBirth,
      'registerDate': instance.registerDate,
      'phone': instance.phone,
      'picture': instance.picture,
    };
