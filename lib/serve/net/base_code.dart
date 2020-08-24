import 'package:dio/dio.dart';
import 'package:frame_master/serve/net/base_response.dart';

/// @time 2020/8/21 10:56 AM
/// @version 1.00
/// @author 高扬

class BaseCode {
  //处理请求结果
  dynamic requestResult(Response response) async {
    BaseResponse baseResponse = BaseResponse.fromJson(response.data);
    if (response.statusCode == 200) {
      switch (baseResponse.code) {
        case 200:
          return response.data;
          break;
        case 201:
          // 参数错误
          return null;
          break;
        case 401:
          // Token过期
          return null;
          break;
        default:
          // 其它值
          return null;
          break;
      }
    } else {
      return null;
    }
  }
}
