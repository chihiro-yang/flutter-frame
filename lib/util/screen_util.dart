import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// @time 2020/8/28 3:43 PM
/// @author gyy
/// @describe: 屏幕适配

//初始化屏幕适配
initScreen(BuildContext buildContext,
    {double designWidth = 1080, double designHeight = 1920}) {
  ScreenUtil.init(buildContext,
      width: designWidth, height: designHeight, allowFontScaling: false);
}

//屏幕宽度
getScreenWidth() => 1.wp;

//屏幕高度
getScreenHeight() => 1.hp;

//状态栏高度
getStateBarHeight() => ScreenUtil.statusBarHeight;

//安全区域高度
getBottomBarHeight() => ScreenUtil.bottomBarHeight;

//设置屏幕宽度
setWidth(double width) => width.w;

//设置屏幕高度
setHeight(double height) => height.h;

//设置屏幕字体(不跟随系统缩放)
setFontSize(double fontSize) => ScreenUtil().setSp(fontSize.nsp);

//设置外边距
setMargin(
        {double top = 0.0,
        double bottom = 0.0,
        double left = 0.0,
        double right = 0.0}) =>
    EdgeInsets.only(left: left.w, right: right.w, top: top.h, bottom: bottom.h);

//设置全部外边距
seAllMargin({double all = 0.0}) =>
    EdgeInsets.only(left: all.w, right: all.w, top: all.h, bottom: all.h);

//设置内边距
setPadding(
        {double top = 0.0,
        double bottom = 0.0,
        double left = 0.0,
        double right = 0.0}) =>
    EdgeInsets.only(left: left.w, right: right.w, top: top.h, bottom: bottom.h);

//设置全部内边距
setAllPadding({double all = 0.0}) =>
    EdgeInsets.only(left: all.w, right: all.w, top: all.h, bottom: all.h);
