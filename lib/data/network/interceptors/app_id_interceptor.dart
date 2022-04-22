part of 'interceptors.dart';

class AppIdInterceptor extends Interceptor {
  AppIdInterceptor(this.config);

  final ApiConfig config;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    Map<String, String> headers = Map.from(options.headers);

    headers["app-id"] = config.appId;
    options.headers = headers;

    return super.onRequest(options, handler);
  }
}
