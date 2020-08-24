import 'package:dio/dio.dart';

class DioErrors {
  ///错误请求处理
  static void formatError(DioError e) {
    if (e.type == DioErrorType.CONNECT_TIMEOUT) {
      print("---------------------连接超时---------------------" + e.message);
    } else if (e.type == DioErrorType.SEND_TIMEOUT) {
      print("---------------------请求超时---------------------" + e.message);
    } else if (e.type == DioErrorType.RECEIVE_TIMEOUT) {
      print("---------------------响应超时---------------------" + e.message);
    } else if (e.type == DioErrorType.RESPONSE) {
      print("---------------------出现异常---------------------" + e.message);
    } else if (e.type == DioErrorType.CANCEL) {
      print("---------------------请求取消---------------------" + e.message);
    } else if (e.type == DioErrorType.DEFAULT) {
      print("---------------------请求错误---------------------" + e.message);
    } else {
      print("---------------------未知错误---------------------" + e.message);
    }
  }
}
