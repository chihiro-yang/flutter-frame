import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:frame_master/page/home/home_page.dart';
import 'package:frame_master/serve/route/route_path.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return initView();
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
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('zh', 'CH'),
        const Locale('en', 'US'),
      ],
    );
  }
}
