import 'package:dio/dio.dart';
import 'package:frame_master/serve/net/base_response.dart';

/// @time 2020/8/21 10:56 AM
/// @version 1.00
/// @author 高扬

class BaseCode {
  //处理请求结果
  dynamic requestResult(
    Response response,
    Function onSuccess,
    Function onError,
  ) async {
    BaseResponse baseResponse = BaseResponse.fromJson(response.data);
    if (response.statusCode == 200) {
      switch (baseResponse.code) {
        case 200:
          onSuccess(response.data);
          break;
        case 201:
          // 参数错误
          onError();
          break;
        case 401:
          // Token过期
          onError();
          break;
        default:
          // 其它值
          onError();
          break;
      }
    } else {
      onError();
    }
  }
}
