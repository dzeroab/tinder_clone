part of 'dao.dart';

abstract class UserDao {
  factory UserDao() => _UserDaoImpl();

  Future<void> insertOrUpdate(UserEntity entity);

  Future<void> clearAndInsertUsers(List<UserEntity> entities);

  Stream<List<UserEntity>> usersStream();

  Future<void> clearTable();
}

/// WordDao implementation
class _UserDaoImpl extends BaseSembastDao<UserEntity> implements UserDao {
  _UserDaoImpl() : super(converter: const UserEntityConverter(), storeName: 'users');

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
}
