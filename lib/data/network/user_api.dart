part of 'network.dart';

///
class UserApi {
  UserApi(this._handler);

  final ApiHandler _handler;

  Future<GetUsersResponse> getUsers() async {
    return _handler.get("user", parser: (json) => GetUsersResponse.fromJson(json));
  }

  Future<UserDto> getFullUser(String id) async {
    return _handler.get("user/$id", parser: (json) => UserDto.fromJson(json));
  }
}
