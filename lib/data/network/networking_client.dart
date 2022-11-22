import 'package:dio/dio.dart';

abstract class NetworkingClient {
  Future<Response<T>> get<T>({
    required String url,
    Map<String, dynamic>? queryParameters,
  });
}

class NetworkingClientImpl implements NetworkingClient {
  final Dio dio = Dio();

  @override
  Future<Response<T>> get<T>({
    required String url,
    Map<String, dynamic>? queryParameters,
  }) async {
    return await dio.get(url, queryParameters: queryParameters);
  }
}
