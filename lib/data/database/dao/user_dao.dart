part of 'dao.dart';

abstract class UserDao {
  factory UserDao() => _UserDaoImpl();

  Future<UserEntity?> getUser(String id);

  Future<void> insertOrUpdate(UserEntity entity);

  Future<void> updateAction(String userId, UserActionState actionState);

  Future<void> clearAndInsertUsers(List<UserEntity> entities);

  Stream<List<UserEntity>> usersStream();

  Future<List<UserEntity>> getUsersByAction(UserActionState actionState);

  Future<void> clearTable();
}

/// WordDao implementation
class _UserDaoImpl extends BaseSembastDao<UserEntity> implements UserDao {
  _UserDaoImpl() : super(converter: const UserEntityConverter(), storeName: 'users');

  @override
  Future<UserEntity?> getUser(String id) => singleOrNull(finder: Finder(filter: Filter.equals("id", id)));

  @override
  Future<void> insertOrUpdate(UserEntity entity) async {
    await saveOrUpdate(entity, finder: Finder(filter: Filter.equals("id", entity.id)));
  }

  @override
  Future<void> clearAndInsertUsers(List<UserEntity> entities) async {
    await clearAndInsertEntities(entities, finder: null);
  }

  @override
  Stream<List<UserEntity>> usersStream() {
    return getStreamAll(finder: Finder());
  }

  @override
  Future<void> clearTable() => clearAll();

  @override
  Future<void> updateAction(String userId, UserActionState actionState) async {
    await update(finder: Finder(filter: Filter.equals("id", userId)), value: {"action_state": actionState.name});
  }

  @override
  Future<List<UserEntity>> getUsersByAction(UserActionState actionState) async {
    return getAll(finder: Finder(filter: Filter.equals("action_state", actionState.name)));
  }
}
