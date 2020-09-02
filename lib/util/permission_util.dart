import 'package:flutter/cupertino.dart';
import 'package:permission_handler/permission_handler.dart';

/// @time 2020/9/1 6:08 PM
/// @author gyy
/// @describe: 网络权限

class PermissionUtil {
  ///动态单一权限请求(包含权限校验)
  static Future<void> requestPermission(Permission permission,
      {@required VoidCallback onSuccessCallBack,
      @required VoidCallback onRefuseCallBack}) async {
    if (await permission.request().isGranted) {
      onSuccessCallBack();
    } else {
      onRefuseCallBack();
    }
  }

  ///动态多权限请求(包含权限校验)
  static Future<void> requestMultiplePermission(List<Permission> permissionList,
      {@required VoidCallback onSuccessCallBack,
      @required VoidCallback onRefuseCallBack}) async {
    Map<Permission, PermissionStatus> statuses = await permissionList.request();

    for (Permission permission in permissionList) {
      if (statuses[permission] != PermissionStatus.granted) {
        onRefuseCallBack();
        return;
      }
    }
    onSuccessCallBack();
  }
}
