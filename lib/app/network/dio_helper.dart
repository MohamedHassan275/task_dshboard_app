import 'package:dio/dio.dart';


class DioHelper {
  static Dio? dio;

  static init() {
    BaseOptions options = BaseOptions(
      receiveDataWhenStatusError: true,
      followRedirects: false,
      validateStatus: (status) {
        return status! < 500;
      },

      connectTimeout: const Duration(seconds: 50),
      receiveTimeout: const Duration(seconds: 50),
    );
    dio = Dio(options);
  }

  static Future<dynamic> getData({required String uri, dynamic query}) async {
    dio?.options.headers =
    {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    return await dio?.get(uri, queryParameters: query,options: Options(
      receiveTimeout: const Duration(seconds: 100000),
      sendTimeout: const Duration(seconds: 100000),));
  }


}
