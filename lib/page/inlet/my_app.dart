import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:frame_master/page/home/home_page.dart';
import 'package:frame_master/serve/route/route_path.dart';
import 'package:frame_master/util/screen_util.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    initApp(context);
    return initView();
  }

  initApp(BuildContext context) {
    initScreen(context);
  }

  initView() {
    return MaterialApp(
      initialRoute: "/",
      routes: RoutePath.appRoute,
      title: 'Flutter Frame',
      theme: ThemeData(),
      //初始化Toast
      builder: BotToastInit(),
      navigatorObservers: [BotToastNavigatorObserver()],
      home: HomePage(),
    );
  }
}
