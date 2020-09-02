import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';

/// @time 2020/9/1 9:21 AM
/// @author gyy
/// @describe: dio cookie

class DioCookie {
  static CookieManager dioCookie() {
    return CookieManager(CookieJar());
  }
}
