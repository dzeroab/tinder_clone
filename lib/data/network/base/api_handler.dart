part of 'base.dart';

typedef ApiResponseToModelParser<T> = T Function(Map<String, dynamic> json);

///
abstract class ApiHandler {
  factory ApiHandler(Dio dio, NetworkProvider networkProvider) => _ApiHandlerImpl(dio, networkProvider);

  Future<T> post<T>(
    String path, {
    required ApiResponseToModelParser<T> parser,
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
    Options? options,
  });

  Future<T> postUint8List<T>(
    String path, {
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
    Options? options,
  });

  Future<T> get<T>(
    String path, {
    required ApiResponseToModelParser<T> parser,
    Map<String, dynamic>? queryParameters,
    Options? options,
  });

  Future<T> getUint8List<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
  });

  Future<List<T>> getList<T>(
    String path, {
    required ApiResponseToModelParser<T> parser,
    Map<String, dynamic>? queryParameters,
    Options? options,
  });

  Future<T> put<T>(
    String path, {
    required ApiResponseToModelParser<T> parser,
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
    Options? options,
  });

  Future<T> putUint8List<T>(
    String path, {
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
    Options? options,
  });

  Future<T> delete<T>(
    String path, {
    required ApiResponseToModelParser<T> parser,
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
    Options? options,
  });

  Future<T> deleteUint8List<T>(
    String path, {
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
    Options? options,
  });
}

class _ApiHandlerImpl implements ApiHandler {
  _ApiHandlerImpl(this._dio, this.networkProvider);

  final Dio _dio;
  final NetworkProvider networkProvider;

  @override
  Future<T> post<T>(
    String path, {
    required ApiResponseToModelParser<T> parser,
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) {
    return _remapError(() async {
      final response = await _dio.post(path, data: body, queryParameters: queryParameters, options: options);
      return parser(response.data);
    });
  }

  @override
  Future<T> get<T>(
    String path, {
    required ApiResponseToModelParser<T> parser,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) {
    return _remapError(() async {
      final response = await _dio.get(path, queryParameters: queryParameters, options: options);
      return parser(response.data);
    });
  }

  @override
  Future<T> delete<T>(
    String path, {
    required ApiResponseToModelParser<T> parser,
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) {
    return _remapError(() async {
      final response = await _dio.delete(path, data: body, queryParameters: queryParameters, options: options);
      return parser(response.data);
    });
  }

  @override
  Future<T> put<T>(
    String path, {
    required ApiResponseToModelParser<T> parser,
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) {
    return _remapError(() async {
      final response = await _dio.put(path, data: body, queryParameters: queryParameters, options: options);
      return parser(response.data);
    });
  }

  @override
  Future<List<T>> getList<T>(
    String path, {
    required ApiResponseToModelParser<T> parser,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) {
    return _remapError(() async {
      final response = await _dio.get(path, queryParameters: queryParameters, options: options);
      if (response.data is List) {
        return (response.data as List).map<T>((e) => parser(e as Map<String, dynamic>)).toList();
      } else {
        throw '${response.data?.runtimeType} is not a List<Map<String, dynamic>';
      }
    });
  }

  Future<T> _remapError<T>(ValueGetter<Future<T>> func) async {
    try {
      return await func();
    } catch (e) {
      throw (await _apiErrorToInternalError(e));
    }
  }

  // TODO: map to internal error
  Future<dynamic> _apiErrorToInternalError(e) async {
    return e;
  }

  @override
  Future<T> getUint8List<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) {
    return _remapError(() async {
      final response = await _dio.get(
        path,
        queryParameters: queryParameters,
        options: options?.copyWith(responseType: ResponseType.plain) ?? Options(responseType: ResponseType.plain),
      );
      return response.data;
    });
  }

  @override
  Future<T> postUint8List<T>(String path,
      {Map<String, dynamic>? body, Map<String, dynamic>? queryParameters, Options? options}) {
    return _remapError(() async {
      final response = await _dio.post(
        path,
        data: body,
        queryParameters: queryParameters,
        options: options?.copyWith(responseType: ResponseType.plain) ?? Options(responseType: ResponseType.plain),
      );
      return response.data;
    });
  }

  @override
  Future<T> deleteUint8List<T>(
    String path, {
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) {
    return _remapError(() async {
      final response = await _dio.delete(
        path,
        data: body,
        queryParameters: queryParameters,
        options: options?.copyWith(responseType: ResponseType.plain) ?? Options(responseType: ResponseType.plain),
      );
      return response.data;
    });
  }

  @override
  Future<T> putUint8List<T>(
    String path, {
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) {
    return _remapError(() async {
      final response = await _dio.put(
        path,
        data: body,
        queryParameters: queryParameters,
        options: options?.copyWith(responseType: ResponseType.plain) ?? Options(responseType: ResponseType.plain),
      );
      return response.data;
    });
  }
}
