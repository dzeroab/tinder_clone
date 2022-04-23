part of 'database.dart';

Future<void> databaseDiModule(GetIt getIt) async {
  ///
  getIt.registerLazySingleton(() => UserDao());
  getIt.registerLazySingleton(() => AppDatabase(
        getIt(),
      ));
}
