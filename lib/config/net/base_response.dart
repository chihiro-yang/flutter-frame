/// @time 2020/9/1 9:21 AM
/// @author gyy
/// @describe: base response

class BaseResponse {
  int code;
  String message;

  BaseResponse({this.code, this.message});

  BaseResponse.fromJson(Map<String, Object> json) {
    code = json['code'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['message'] = this.message;
    return data;
  }
}
