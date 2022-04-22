part of 'database.dart';

Future<void> databaseDiModule(GetIt getIt) async {
  ///
  getIt.registerLazySingleton(() => AppDatabase());
}
