import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  const Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');

      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with ApiServer');

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response?.statusCode, dioError.response?.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request to ApiServer was canceled');
      case DioExceptionType.unknown:
        if (dioError.message != null &&
            dioError.message!.contains('SocketException')) {
          return ServerFailure('No Internet Connection');
        }
        return ServerFailure(
            'Unexpected Error, Please try again! , ${dioError.error}');
      default:
        return ServerFailure('There was an Error, Please try again');
    }
  }

  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode != null) {
      switch (statusCode) {
        case 400:
          return ServerFailure('Bad request: ${response['message'] ?? 'Invalid data'}');
        case 401:
          return ServerFailure('Unauthorized: ${response['message'] ?? 'Invalid credentials'}');
        case 403:
          return ServerFailure('Forbidden: ${response['message'] ?? 'Access denied'}');
        case 404:
          return ServerFailure('Not found: ${response['message'] ?? 'Requested resource not found'}');
        case 500:
          return ServerFailure('Internal Server Error: ${response['message'] ?? 'Please try again later'}');
        default:
          return ServerFailure(
              'Received invalid status code: $statusCode, Message: ${response['message'] ?? 'Unknown error'}');
      }
    }
    return ServerFailure('Unexpected error occurred');
  }
}
