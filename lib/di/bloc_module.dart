part of 'di.dart';

Future<void> blocModule(GetIt getIt) async {
  getIt.registerFactory(() => HomeBloc(getIt()));
}
