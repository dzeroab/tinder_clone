part of 'domain.dart';

///
class SyncUsersCommand {
  SyncUsersCommand(this._api);

  final UserApi _api;

  Future<void> call() async {
    final response = await _api.getUsers();
    print("${response.total}");
    print("${response.page}");
    print("${response.limit}");
  }
}
