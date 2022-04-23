part of 'dto.dart';

@freezed
abstract class UserDto with _$UserDto {
  @JsonSerializable(fieldRename: FieldRename.none, explicitToJson: true)
  const factory UserDto({
    required String id,
    required String title,
    required String firstName,
    required String lastName,
    required String gender,
    required String email,
    required String dateOfBirth,
    required String registerDate,
    required String phone,
    required String picture,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) => _$UserDtoFromJson(json);
}
