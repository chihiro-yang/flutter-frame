import 'dart:io';

import 'package:path_provider/path_provider.dart';

class PathUtil {
  ///获取缓存catch目录路径
  static Future getCatchDirPath() async {
    try {
      Directory tempDir = await getTemporaryDirectory();
      return tempDir.path;
    } catch (e) {
      print("-------------catch目录路径获取失败-------------错误信息>>>>>>>>>>>>${e.toString()}");
    }
  }

  ///获取app私有存储路径
  static Future getAppDirPath() async {
    try {
      Directory filesDir = await getApplicationSupportDirectory();
      return filesDir.path;
    } catch (e) {
      print("-------------app私有存储路径失败-------------错误信息>>>>>>>>>>>>${e.toString()}");
    }
  }
}
