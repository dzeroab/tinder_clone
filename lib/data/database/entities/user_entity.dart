part of 'entities.dart';

@freezed
class UserEntity with _$UserEntity {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory UserEntity({
    required String id,
    required String title,
    required String firstName,
    required String lastName,
    required String picture,
    String? gender,
    String? email,
    String? dateOfBirth,
    String? registerDate,
    String? phone,
  }) = _UserEntity;

  factory UserEntity.fromJson(Map<String, dynamic> json) => _$UserEntityFromJson(json);
}

class UserEntityConverter implements JsonConverter<UserEntity, Map<String, dynamic>> {
  const UserEntityConverter();

  @override
  UserEntity fromJson(Map<String, dynamic> json) => UserEntity.fromJson(json);

  @override
  Map<String, dynamic> toJson(UserEntity object) => object.toJson();
}
