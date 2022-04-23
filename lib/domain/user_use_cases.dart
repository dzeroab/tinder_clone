part of 'domain.dart';

///
class SyncUsersCommand {
  SyncUsersCommand(this._api, this._database);

  final UserApi _api;
  final AppDatabase _database;

  Future<void> call() async {
    final response = await _api.getUsers();

    final entities = response.data
        .map((e) => UserEntity(
              id: e.id,
              title: e.title,
              firstName: e.firstName,
              lastName: e.lastName,
              picture: e.picture,
            ))
        .toList();

    await _database.userDao.clearAndInsertUsers(entities);
  }
}

///
class GetUserListQuery {
  final AppDatabase _database;

  GetUserListQuery(this._database);

  Stream<List<User>> call() => _database //
      .userDao
      .usersStream()
      .map(
        (users) => users.map((e) => e.mapToUser()).toList(),
      );
}
