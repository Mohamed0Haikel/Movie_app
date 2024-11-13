import 'dart:developer';
import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;
  static const String imgBaseURL = 'https://image.tmdb.org/t/p/w200';

  ApiService() : _dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3',
      headers: {
        'Content-Type': 'application/json',
      },
    ),
  ) {
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          options.queryParameters['api_key'] = 'a66cb1cd3bde75c7e744b794f863e994';
          log('REQUEST[${options.method}] => PATH: ${options.path}');
          return handler.next(options);
        },
        onResponse: (response, handler) {
          log('RESPONSE[${response.statusCode}] => DATA: ${response.data}');
          return handler.next(response);
        },
        onError: (DioException error, handler) {
          log('ERROR[${error.response?.statusCode}] => MESSAGE: ${error.message}');
          return handler.next(error);
        },
      ),
    );
  }

  Future<Response> get(String endpoint, {Map<String, dynamic>? queryParameters}) async {
    return await _dio.get(endpoint, queryParameters: queryParameters);
  }

  Future<Response> post(String endpoint, {Map<String, dynamic>? data}) async {
    return await _dio.post(endpoint, data: data);
  }
}
