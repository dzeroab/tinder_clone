part of 'data.dart';

Future<void> dataModule(GetIt getIt, ApiConfig config) async {
  await networkModule(getIt, config);
  await databaseDiModule(getIt);
}
