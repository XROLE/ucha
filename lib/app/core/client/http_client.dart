import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:ucha/app/core/endpoints/endpoints.dart';
import 'package:ucha/app/core/failure/failure_type.dart';

class HttpClient {
  static String baseUrl = Endpoints.autBaseUrl;
  static BaseOptions opts = BaseOptions(
    baseUrl: baseUrl,
    responseType: ResponseType.json,
    connectTimeout: 30000,
    receiveTimeout: 30000,
    contentType: 'application/json',
  );

  static Dio createDio() {
    return Dio(opts);
  }

  static final dio = createDio();
  // static final baseAPI = addInterceptors(dio);

  Future<Response?> get(String url) async {
    debugPrint('get url =====> $url');
    try {
      Response response = await dio.get(url);
      return response;
    } on DioError catch (e) {
      debugPrint('get Dio error ====> --$e');
      return null;
    }
  }

  Future post(String url, dynamic data, {Map<String, String>? headers}) async {
    debugPrint('url ============> $url');
    debugPrint(' data: ============> $data');
    debugPrint(' header: ============> $headers');
    try {
      final response = await dio.post(url, data: data, options: Options(headers: headers));
      debugPrint("Response $response");

      return response;
    } on DioError catch (e) {
      if (e.response != null) {

        throw Failure(e.response?.data['message'], statusCode: e.response?.statusCode);
      } else {
        debugPrint("Error ================> $e");
        throw Failure('Something went wrong, please try again later', statusCode: e.response?.statusCode);
      }
    }
  }

  Future<Response?> patch(String url, dynamic data) async {
    debugPrint('patch url =====> $url');
    try {
      Response response = await dio.patch(url, data: data);
      return response;
    } on DioError catch (e) {
      debugPrint('patch Dio error ====> $e');
      return null;
    }
  }

  Future<Response?> delete(String url) async {
    debugPrint('delete url =====> $url');
    try {
      Response response = await dio.delete(url);
      return response;
    } on DioError catch (e) {
      debugPrint('delete Dio error ====> --$e');
      return null;
    }
  }
}