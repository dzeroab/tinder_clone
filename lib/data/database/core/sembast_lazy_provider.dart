part of 'core.dart';

class LazySembastDatabase {
  LazySembastDatabase._();

  static final LazySembastDatabase singleton = LazySembastDatabase._();

  Completer<Database>? _dbOpenCompleter;

  Future<Database> get database async {
    if (_dbOpenCompleter == null) {
      _dbOpenCompleter = Completer();
      _openDatabase();
    }

    return _dbOpenCompleter!.future;
  }

  Future _openDatabase() async {
    // Get a platform-specific directory where persistent app data can be stored
    final appDocumentDir = await getApplicationDocumentsDirectory();
    final dbPath = path.join(appDocumentDir.path, 'database.db');

    final database = await databaseFactoryIo.openDatabase(dbPath);
    _dbOpenCompleter?.complete(database);
  }
}
