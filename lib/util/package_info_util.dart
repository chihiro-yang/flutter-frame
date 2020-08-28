import 'package:package_info/package_info.dart';

///获取apk信息
class PackageInfoUtil {
  static Future getPackageInfo() async {
    try {
      PackageInfo _packageInfo = await PackageInfo.fromPlatform();
      return _packageInfo;
    } catch (e) {
      print("-------------安装包信息获取失败-------------${e.toString()}");
      throw (e);
    }
  }
}
