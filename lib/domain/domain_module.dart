part of 'domain.dart';

Future<void> domainModule(GetIt getIt) async {
  getIt.registerFactory(() => SyncUsersCommand(
        getIt(),
        getIt(),
      ));

  getIt.registerFactory(() => GetUserListQuery(
        getIt(),
      ));
}
