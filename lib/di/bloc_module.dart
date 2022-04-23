part of 'di.dart';

Future<void> blocModule(GetIt getIt) async {
  getIt.registerFactory(() => HomeBloc(
        getIt(),
        getIt(),
        getIt(),
        getIt(),
      ));

  getIt.registerFactory(() => UserListBloc(
        getIt(),
      ));
}
