import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';

//自动管理 cookie

class DioCookie {
  static CookieManager dioCookie() {
    return CookieManager(CookieJar());
  }
}
