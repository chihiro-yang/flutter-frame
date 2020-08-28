import 'dart:io';

import 'package:device_info/device_info.dart';

///获取设备信息
class DeviceInfoUtil {
  static Future getDeviceInfo() async {
    try {
      if (Platform.isAndroid) {
        AndroidDeviceInfo androidInfo = await DeviceInfoPlugin().androidInfo;
        return androidInfo;
      } else {
        IosDeviceInfo iosInfo = await DeviceInfoPlugin().iosInfo;
        return iosInfo;
      }
    } catch (e) {
      print(
          "-------------设备信息获取失败-------------错误信息>>>>>>>>>>>>${e.toString()}");
      throw (e);
    }
  }
}
