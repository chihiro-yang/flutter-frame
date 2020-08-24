import 'package:dio/dio.dart';

///dio 拦截器 - 打印相关数据

class DioInterceptors {
  static InterceptorsWrapper dioInterceptors() {
    return InterceptorsWrapper(onRequest: (RequestOptions options) {
      print("---------------------请 求 头--------------------- " +
          options.headers.toString());
      print("---------------------请求地址--------------------- " +
          options.baseUrl +
          options.path);
      print("---------------------query参数--------------------- " +
          options.data.toString());
      print("---------------------data参数--------------------- " +
          options.queryParameters.toString());
      return options; //continue
    }, onResponse: (Response response) {
      print("---------------------响应请求--------------------- " +
          response.data.toString());
      return response; // continue
    }, onError: (DioError e) {
      print("---------------------请求错误--------------------- " +
          e.error.toString());
      return e; //continue
    });
  }
}
