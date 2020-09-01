import 'package:flutter/material.dart';
import 'package:frame_master/page/home/home_page.dart';
import 'package:frame_master/serve/route/route_util.dart';
import 'package:frame_master/util/screen_util.dart';

/// @time 2020/8/31 11:10 AM
/// @author gyy
/// @describe:

class StartProvider extends ChangeNotifier {
  void initScreens(BuildContext buildContext) {
    initScreen(buildContext);
  }

  //加载过度页
  void initAdvert(BuildContext context) async {
    await Future.delayed(Duration(milliseconds: 2500), () {
      RouteUtil.pushPage(context, HomePage());
    });
  }
}
