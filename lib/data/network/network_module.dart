part of 'network.dart';

Dio _buildDio(ApiConfig config, List<Interceptor> interceptors) {
  return Dio()
    ..options.baseUrl = config.baseUrl
    ..interceptors.addAll(interceptors);
}

Future<void> networkModule(GetIt getIt, ApiConfig config) async {
  ///
  getIt.registerLazySingleton<NetworkProvider>(() => NetworkProvider(Connectivity()));
  getIt.registerLazySingleton<AppIdInterceptor>(() => AppIdInterceptor(config));
  getIt.registerLazySingleton<Dio>(() => _buildDio(
        config,
        [getIt<AppIdInterceptor>(), logInterceptor],
      ));

  getIt.registerLazySingleton<ApiHandler>(() => ApiHandler(
        getIt(),
        getIt(),
      ));
}
