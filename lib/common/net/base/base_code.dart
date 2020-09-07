import 'package:dio/dio.dart';

import 'base_response.dart';

/// @time 2020/9/1 9:21 AM
/// @author gyy
/// @describe: base code
class BaseCode {
  //处理请求结果
  dynamic requestResult(
    Response response,
  ) async {
    BaseResponse baseResponse = BaseResponse.fromJson(response.data);
    if (response.statusCode == 200) {
      switch (baseResponse.code) {
        case 200:
          return response;
        case 201:
          // 参数错误
          return null;
        case 401:
          // Token过期
          return null;
        default:
          // 其它值
          return null;
      }
    } else {
      return null;
    }
  }
}
