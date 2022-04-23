// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserPreviewDto _$UserPreviewDtoFromJson(Map<String, dynamic> json) {
  return _UserPreviewDto.fromJson(json);
}

/// @nodoc
class _$UserPreviewDtoTearOff {
  const _$UserPreviewDtoTearOff();

  _UserPreviewDto call(
      {required String id,
      required String title,
      required String firstName,
      required String lastName,
      required String picture}) {
    return _UserPreviewDto(
      id: id,
      title: title,
      firstName: firstName,
      lastName: lastName,
      picture: picture,
    );
  }

  UserPreviewDto fromJson(Map<String, Object?> json) {
    return UserPreviewDto.fromJson(json);
  }
}

/// @nodoc
const $UserPreviewDto = _$UserPreviewDtoTearOff();

/// @nodoc
mixin _$UserPreviewDto {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get picture => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserPreviewDtoCopyWith<UserPreviewDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPreviewDtoCopyWith<$Res> {
  factory $UserPreviewDtoCopyWith(
          UserPreviewDto value, $Res Function(UserPreviewDto) then) =
      _$UserPreviewDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      String firstName,
      String lastName,
      String picture});
}

/// @nodoc
class _$UserPreviewDtoCopyWithImpl<$Res>
    implements $UserPreviewDtoCopyWith<$Res> {
  _$UserPreviewDtoCopyWithImpl(this._value, this._then);

  final UserPreviewDto _value;
  // ignore: unused_field
  final $Res Function(UserPreviewDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? picture = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserPreviewDtoCopyWith<$Res>
    implements $UserPreviewDtoCopyWith<$Res> {
  factory _$UserPreviewDtoCopyWith(
          _UserPreviewDto value, $Res Function(_UserPreviewDto) then) =
      __$UserPreviewDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      String firstName,
      String lastName,
      String picture});
}

/// @nodoc
class __$UserPreviewDtoCopyWithImpl<$Res>
    extends _$UserPreviewDtoCopyWithImpl<$Res>
    implements _$UserPreviewDtoCopyWith<$Res> {
  __$UserPreviewDtoCopyWithImpl(
      _UserPreviewDto _value, $Res Function(_UserPreviewDto) _then)
      : super(_value, (v) => _then(v as _UserPreviewDto));

  @override
  _UserPreviewDto get _value => super._value as _UserPreviewDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? picture = freezed,
  }) {
    return _then(_UserPreviewDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none, explicitToJson: true)
class _$_UserPreviewDto implements _UserPreviewDto {
  const _$_UserPreviewDto(
      {required this.id,
      required this.title,
      required this.firstName,
      required this.lastName,
      required this.picture});

  factory _$_UserPreviewDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserPreviewDtoFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String picture;

  @override
  String toString() {
    return 'UserPreviewDto(id: $id, title: $title, firstName: $firstName, lastName: $lastName, picture: $picture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserPreviewDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality().equals(other.picture, picture));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(picture));

  @JsonKey(ignore: true)
  @override
  _$UserPreviewDtoCopyWith<_UserPreviewDto> get copyWith =>
      __$UserPreviewDtoCopyWithImpl<_UserPreviewDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserPreviewDtoToJson(this);
  }
}

abstract class _UserPreviewDto implements UserPreviewDto {
  const factory _UserPreviewDto(
      {required String id,
      required String title,
      required String firstName,
      required String lastName,
      required String picture}) = _$_UserPreviewDto;

  factory _UserPreviewDto.fromJson(Map<String, dynamic> json) =
      _$_UserPreviewDto.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get picture;
  @override
  @JsonKey(ignore: true)
  _$UserPreviewDtoCopyWith<_UserPreviewDto> get copyWith =>
      throw _privateConstructorUsedError;
}

GetUsersResponse _$GetUsersResponseFromJson(Map<String, dynamic> json) {
  return _GetUsersResponse.fromJson(json);
}

/// @nodoc
class _$GetUsersResponseTearOff {
  const _$GetUsersResponseTearOff();

  _GetUsersResponse call(
      {required int total,
      required int page,
      required int limit,
      required List<UserPreviewDto> data}) {
    return _GetUsersResponse(
      total: total,
      page: page,
      limit: limit,
      data: data,
    );
  }

  GetUsersResponse fromJson(Map<String, Object?> json) {
    return GetUsersResponse.fromJson(json);
  }
}

/// @nodoc
const $GetUsersResponse = _$GetUsersResponseTearOff();

/// @nodoc
mixin _$GetUsersResponse {
  int get total => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  List<UserPreviewDto> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetUsersResponseCopyWith<GetUsersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUsersResponseCopyWith<$Res> {
  factory $GetUsersResponseCopyWith(
          GetUsersResponse value, $Res Function(GetUsersResponse) then) =
      _$GetUsersResponseCopyWithImpl<$Res>;
  $Res call({int total, int page, int limit, List<UserPreviewDto> data});
}

/// @nodoc
class _$GetUsersResponseCopyWithImpl<$Res>
    implements $GetUsersResponseCopyWith<$Res> {
  _$GetUsersResponseCopyWithImpl(this._value, this._then);

  final GetUsersResponse _value;
  // ignore: unused_field
  final $Res Function(GetUsersResponse) _then;

  @override
  $Res call({
    Object? total = freezed,
    Object? page = freezed,
    Object? limit = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UserPreviewDto>,
    ));
  }
}

/// @nodoc
abstract class _$GetUsersResponseCopyWith<$Res>
    implements $GetUsersResponseCopyWith<$Res> {
  factory _$GetUsersResponseCopyWith(
          _GetUsersResponse value, $Res Function(_GetUsersResponse) then) =
      __$GetUsersResponseCopyWithImpl<$Res>;
  @override
  $Res call({int total, int page, int limit, List<UserPreviewDto> data});
}

/// @nodoc
class __$GetUsersResponseCopyWithImpl<$Res>
    extends _$GetUsersResponseCopyWithImpl<$Res>
    implements _$GetUsersResponseCopyWith<$Res> {
  __$GetUsersResponseCopyWithImpl(
      _GetUsersResponse _value, $Res Function(_GetUsersResponse) _then)
      : super(_value, (v) => _then(v as _GetUsersResponse));

  @override
  _GetUsersResponse get _value => super._value as _GetUsersResponse;

  @override
  $Res call({
    Object? total = freezed,
    Object? page = freezed,
    Object? limit = freezed,
    Object? data = freezed,
  }) {
    return _then(_GetUsersResponse(
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UserPreviewDto>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none, explicitToJson: true)
class _$_GetUsersResponse implements _GetUsersResponse {
  const _$_GetUsersResponse(
      {required this.total,
      required this.page,
      required this.limit,
      required this.data});

  factory _$_GetUsersResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetUsersResponseFromJson(json);

  @override
  final int total;
  @override
  final int page;
  @override
  final int limit;
  @override
  final List<UserPreviewDto> data;

  @override
  String toString() {
    return 'GetUsersResponse(total: $total, page: $page, limit: $limit, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetUsersResponse &&
            const DeepCollectionEquality().equals(other.total, total) &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.limit, limit) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(total),
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(limit),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$GetUsersResponseCopyWith<_GetUsersResponse> get copyWith =>
      __$GetUsersResponseCopyWithImpl<_GetUsersResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetUsersResponseToJson(this);
  }
}

abstract class _GetUsersResponse implements GetUsersResponse {
  const factory _GetUsersResponse(
      {required int total,
      required int page,
      required int limit,
      required List<UserPreviewDto> data}) = _$_GetUsersResponse;

  factory _GetUsersResponse.fromJson(Map<String, dynamic> json) =
      _$_GetUsersResponse.fromJson;

  @override
  int get total;
  @override
  int get page;
  @override
  int get limit;
  @override
  List<UserPreviewDto> get data;
  @override
  @JsonKey(ignore: true)
  _$GetUsersResponseCopyWith<_GetUsersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

UserDto _$UserDtoFromJson(Map<String, dynamic> json) {
  return _UserDto.fromJson(json);
}

/// @nodoc
class _$UserDtoTearOff {
  const _$UserDtoTearOff();

  _UserDto call(
      {required String id,
      required String title,
      required String firstName,
      required String lastName,
      required String gender,
      required String email,
      required String dateOfBirth,
      required String registerDate,
      required String phone,
      required String picture}) {
    return _UserDto(
      id: id,
      title: title,
      firstName: firstName,
      lastName: lastName,
      gender: gender,
      email: email,
      dateOfBirth: dateOfBirth,
      registerDate: registerDate,
      phone: phone,
      picture: picture,
    );
  }

  UserDto fromJson(Map<String, Object?> json) {
    return UserDto.fromJson(json);
  }
}

/// @nodoc
const $UserDto = _$UserDtoTearOff();

/// @nodoc
mixin _$UserDto {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get dateOfBirth => throw _privateConstructorUsedError;
  String get registerDate => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get picture => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDtoCopyWith<UserDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDtoCopyWith<$Res> {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) then) =
      _$UserDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      String firstName,
      String lastName,
      String gender,
      String email,
      String dateOfBirth,
      String registerDate,
      String phone,
      String picture});
}

/// @nodoc
class _$UserDtoCopyWithImpl<$Res> implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._value, this._then);

  final UserDto _value;
  // ignore: unused_field
  final $Res Function(UserDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? gender = freezed,
    Object? email = freezed,
    Object? dateOfBirth = freezed,
    Object? registerDate = freezed,
    Object? phone = freezed,
    Object? picture = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
      registerDate: registerDate == freezed
          ? _value.registerDate
          : registerDate // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserDtoCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$UserDtoCopyWith(_UserDto value, $Res Function(_UserDto) then) =
      __$UserDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      String firstName,
      String lastName,
      String gender,
      String email,
      String dateOfBirth,
      String registerDate,
      String phone,
      String picture});
}

/// @nodoc
class __$UserDtoCopyWithImpl<$Res> extends _$UserDtoCopyWithImpl<$Res>
    implements _$UserDtoCopyWith<$Res> {
  __$UserDtoCopyWithImpl(_UserDto _value, $Res Function(_UserDto) _then)
      : super(_value, (v) => _then(v as _UserDto));

  @override
  _UserDto get _value => super._value as _UserDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? gender = freezed,
    Object? email = freezed,
    Object? dateOfBirth = freezed,
    Object? registerDate = freezed,
    Object? phone = freezed,
    Object? picture = freezed,
  }) {
    return _then(_UserDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
      registerDate: registerDate == freezed
          ? _value.registerDate
          : registerDate // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none, explicitToJson: true)
class _$_UserDto implements _UserDto {
  const _$_UserDto(
      {required this.id,
      required this.title,
      required this.firstName,
      required this.lastName,
      required this.gender,
      required this.email,
      required this.dateOfBirth,
      required this.registerDate,
      required this.phone,
      required this.picture});

  factory _$_UserDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserDtoFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String gender;
  @override
  final String email;
  @override
  final String dateOfBirth;
  @override
  final String registerDate;
  @override
  final String phone;
  @override
  final String picture;

  @override
  String toString() {
    return 'UserDto(id: $id, title: $title, firstName: $firstName, lastName: $lastName, gender: $gender, email: $email, dateOfBirth: $dateOfBirth, registerDate: $registerDate, phone: $phone, picture: $picture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality()
                .equals(other.dateOfBirth, dateOfBirth) &&
            const DeepCollectionEquality()
                .equals(other.registerDate, registerDate) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.picture, picture));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(gender),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(dateOfBirth),
      const DeepCollectionEquality().hash(registerDate),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(picture));

  @JsonKey(ignore: true)
  @override
  _$UserDtoCopyWith<_UserDto> get copyWith =>
      __$UserDtoCopyWithImpl<_UserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDtoToJson(this);
  }
}

abstract class _UserDto implements UserDto {
  const factory _UserDto(
      {required String id,
      required String title,
      required String firstName,
      required String lastName,
      required String gender,
      required String email,
      required String dateOfBirth,
      required String registerDate,
      required String phone,
      required String picture}) = _$_UserDto;

  factory _UserDto.fromJson(Map<String, dynamic> json) = _$_UserDto.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get gender;
  @override
  String get email;
  @override
  String get dateOfBirth;
  @override
  String get registerDate;
  @override
  String get phone;
  @override
  String get picture;
  @override
  @JsonKey(ignore: true)
  _$UserDtoCopyWith<_UserDto> get copyWith =>
      throw _privateConstructorUsedError;
}
