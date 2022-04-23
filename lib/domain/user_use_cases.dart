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
              actionState: UserActionState.none,
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

///
class LoadUserDetailCommand {
  final UserApi _api;
  final AppDatabase _database;

  LoadUserDetailCommand(this._api, this._database);

  Future<void> call(String userId) async {
    final userEntity = await _database.userDao.getUser(userId);

    final hasDetail = userEntity?.dateOfBirth != null;
    if (hasDetail) return;

    final user = await _api.getFullUser(userId);

    final entity = UserEntity(
      id: user.id,
      title: user.title,
      firstName: user.firstName,
      lastName: user.lastName,
      picture: user.picture,
      registerDate: user.registerDate,
      phone: user.phone,
      gender: user.gender,
      email: user.email,
      dateOfBirth: user.dateOfBirth,
      actionState: userEntity?.actionState ?? UserActionState.none,
    );

    await _database.userDao.insertOrUpdate(entity);
  }
}

//
class UpdateUserActionCommand {
  final AppDatabase _database;

  UpdateUserActionCommand(this._database);

  Future<void> call(String userId, UserActionState actionState) async {
    await _database.userDao.updateAction(userId, actionState);
  }
}

class GetUserListByActionQuery {
  final AppDatabase _database;

  GetUserListByActionQuery(this._database);

  Future<List<User>> call(UserActionState actionState) => _database //
      .userDao
      .getUsersByAction(actionState)
      .then(
        (users) => users.map((e) => e.mapToUser()).toList(),
      );
}
