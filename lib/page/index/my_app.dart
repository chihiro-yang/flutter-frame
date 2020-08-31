import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:frame_master/page/index/provider/start_provider.dart';
import 'package:frame_master/page/index/start_page.dart';
import 'package:frame_master/serve/route/route_path.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return initProvider();
  }

  initProvider() {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => StartProvider()),
      ],
      child: initBuild(),
    );
  }

  initBuild() => MaterialApp(
        initialRoute: "/",
        routes: RoutePath.appRoute,
        title: 'Flutter Frame',
        theme: ThemeData(),
        //初始化Toast
        builder: BotToastInit(),
        navigatorObservers: [BotToastNavigatorObserver()],
        home: StartPage(),
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('zh', 'CH'),
          const Locale('en', 'US'),
        ],
        debugShowCheckedModeBanner: false,
      );
}
