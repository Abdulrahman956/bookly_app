import 'package:dio/dio.dart';

abstract class AppFailure {
  final String errMessage;

  const AppFailure(this.errMessage);
}

class ServerFailure extends AppFailure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      // ignore: deprecated_member_use
      case DioErrorType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');

      // ignore: deprecated_member_use
      case DioErrorType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');
// ignore: deprecated_member_use
      case DioErrorType.receiveTimeout:
        return ServerFailure('Receive timeout with ApiServer');
// ignore: deprecated_member_use
      case DioErrorType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode, dioError.response!.data);
      // ignore: deprecated_member_use
      case DioErrorType.cancel:
        return ServerFailure('Request to ApiServer was canceld');
// ignore: deprecated_member_use
      case DioErrorType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFailure('No Internet Connection');
        }
        return ServerFailure('Unexpected Error, Please try again!');
      default:
        return ServerFailure('Opps There was an Error, Please try again');
    }
  }

  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found, Please try later!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server error, Please try later');
    } else {
      return ServerFailure('Opps There was an Error, Please try again');
    }
  }
}
