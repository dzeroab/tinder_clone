part of 'dto.dart';

@freezed
class UserPreviewDto with _$UserPreviewDto {
  @JsonSerializable(fieldRename: FieldRename.none, explicitToJson: true)
  const factory UserPreviewDto({
    required String id,
    required String title,
    required String firstName,
    required String lastName,
    required String picture,
  }) = _UserPreviewDto;

  factory UserPreviewDto.fromJson(Map<String, dynamic> json) => _$UserPreviewDtoFromJson(json);
}

@freezed
abstract class GetUsersResponse with _$GetUsersResponse {
  @JsonSerializable(fieldRename: FieldRename.none, explicitToJson: true)
  const factory GetUsersResponse({
    required int total,
    required int page,
    required int limit,
    required List<UserPreviewDto> data,
  }) = _GetUsersResponse;

  factory GetUsersResponse.fromJson(Map<String, dynamic> json) => _$GetUsersResponseFromJson(json);
}
