import 'package:flutter/material.dart';

/// @time 2020/9/1 9:21 AM
/// @author gyy
/// @describe: 动态路由


class RouteUtil {
  ///动态路由 - 跳转
  static void pushPage(BuildContext context, Widget cls, {Function popResult}) {
    Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
      return cls;
    })).then((dynamic value) => () {
          if (value != null || popResult != null) {
            popResult(value);
          }
        });
  }

  ///静态路由 - 跳转
  static void pushName(BuildContext context, String path,
      {Function popResult}) {
    Navigator.of(context).pushNamed(path).then((value) {
      if (value != null || popResult != null) {
        popResult(value);
      }
    });
  }

  ///退出单个页面
  static void popPage(BuildContext context, {dynamic params}) {
    if (Navigator.canPop(context)) {
      Navigator.pop(context, params);
    }
  }

  ///退出多个页面-静态方法
  static void popMultiplePage(BuildContext context, String path) {
    Navigator.popUntil(context, ModalRoute.withName(path));
  }

  ///退出到根目录
  static void pop2RootPage(BuildContext context) {
    while (Navigator.canPop(context)) {
      Navigator.pop(context);
    }
  }

  ///退出指定层级页面
  static void popLevelsPage(BuildContext context, int popNum) {
    for (int i = 0; i < popNum; i++) {
      if (Navigator.canPop(context)) {
        Navigator.pop(context);
      }
    }
  }
}
