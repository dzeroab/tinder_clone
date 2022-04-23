part of 'domain.dart';

Future<void> domainModule(GetIt getIt) async {
  getIt.registerFactory(() => SyncUsersCommand(
        getIt(),
        getIt(),
      ));

  getIt.registerFactory(() => GetUserListQuery(
        getIt(),
      ));

  getIt.registerFactory(() => UpdateUserActionCommand(
        getIt(),
      ));

  getIt.registerFactory(() => LoadUserDetailCommand(
        getIt(),
        getIt(),
      ));

  getIt.registerFactory(() => GetUserListByActionQuery(
        getIt(),
      ));
}
