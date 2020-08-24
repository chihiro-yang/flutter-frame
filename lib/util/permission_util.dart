import 'package:flutter/cupertino.dart';
import 'package:permission_handler/permission_handler.dart';

//TODO 需继续考虑逻辑性
class PermissionUtil {

  ///动态单一权校验
  static Future<void> checkCameraPermission(Permission permission,
      {@required VoidCallback onSuccessCallBack,
      @required VoidCallback onRefuseCallBack}) async {
    var status = await permission.status;
    if (status.isGranted) {
      onSuccessCallBack();
    } else {
      onRefuseCallBack();
    }
  }

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
