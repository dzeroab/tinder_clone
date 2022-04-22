part of 'core.dart';

abstract class EntityDataConverter<T> implements JsonConverter<T, Map<String, dynamic>> {}

class BaseSembastDao<T> {
  BaseSembastDao({
    required this.converter,
    required String storeName,
    LazySembastDatabase? lazySembastDatabase,
  })  : storeRef = intMapStoreFactory.store(storeName),
        _dbProvider = lazySembastDatabase ?? LazySembastDatabase.singleton;

  final LazySembastDatabase _dbProvider;

  final JsonConverter<T, Map<String, dynamic>> converter;

  final StoreRef<int, Map<String, Object?>> storeRef;

  //
  late final Logger logger = Logger(runtimeType.toString());

  Future<int> save(T entity) => _dbProvider //
      .database
      .then((database) => storeRef.add(database, converter.toJson(entity)));

  Future<int> saveOrUpdate(T entity, {required Finder finder}) async {
    final database = await _dbProvider.database;

    final result = await singleOrNull(finder: finder);
    if (result == null) {
      return storeRef.add(database, converter.toJson(entity));
    }

    return storeRef.update(
      database,
      converter.toJson(entity),
      finder: finder,
    );
  }

  Future<int> update({required Finder finder, required Map<String, dynamic> value}) async {
    final database = await _dbProvider.database;
    return storeRef.update(
      database,
      value,
      finder: finder,
    );
  }

  Future<T?> singleOrNull({required Finder finder}) async {
    final database = await _dbProvider.database;
    return storeRef //
        .findFirst(database, finder: finder)
        .then((record) => record?.convert(converter));
  }

  Stream<T?> streamSingleOrNull({required Finder finder}) async* {
    final database = await _dbProvider.database;
    yield* storeRef //
        .query(finder: finder)
        .onSnapshot(database)
        .map((record) => record?.convert(converter));
  }

  Future<List<T>> getAll({Finder? finder}) async {
    final database = await _dbProvider.database;

    return storeRef //
        .query(finder: finder)
        .getSnapshots(database)
        .then((value) => value.map((e) => e.convert(converter)).toList());
  }

  Stream<List<T>> getStreamAll({Finder? finder}) async* {
    final database = await _dbProvider.database;

    yield* storeRef //
        .query(finder: finder)
        .onSnapshots(database)
        .map((value) => value.map((e) => e.convert(converter)).toList());
  }

  Future<Result> runTransaction<Result>(FutureOr<Result> Function(Transaction transaction) action) async {
    final database = await _dbProvider.database;
    return database.transaction(action);
  }

  Future<int> clearAll({Finder? finder}) async {
    final database = await _dbProvider.database;
    return storeRef.delete(database, finder: finder);
  }

  Future<void> clearAndInsertEntities(List<T> entities, {required Finder? finder}) =>
      runTransaction<void>((transaction) async {
        // delete all
        await storeRef.delete(transaction, finder: finder);

        await Future.wait(entities.map((e) => storeRef.add(transaction, converter.toJson(e))));
      });

  Future<int> count({Filter? filter}) async {
    final database = await _dbProvider.database;
    return storeRef.count(database, filter: filter);
  }

  Stream<int> countStream({Filter? filter}) async* {
    final database = await _dbProvider.database;

    yield* storeRef //
        .query(finder: Finder(filter: filter))
        .onSnapshots(database)
        .map((value) => value.length);
  }

  ///
  Future<bool> hasAnyData() => singleOrNull(finder: Finder()).then((value) => value != null);

  Future<void> clear() => clearAll();
}

extension _ExRecordSnapshot on RecordSnapshot<int, Map<String, Object?>> {
  T convert<T>(JsonConverter<T, Map<String, dynamic>> converter) {
    return converter.fromJson(value);
  }
}
