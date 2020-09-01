import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:frame_master/page/index/provider/start_provider.dart';
import 'package:frame_master/page/index/start_page.dart';
import 'package:frame_master/serve/config/gei_it_config.dart';
import 'package:frame_master/serve/route/route_path.dart';
import 'package:frame_master/util/get_it_util.dart';
import 'package:frame_master/view/base/base_state.dart';
import 'package:provider/provider.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends BaseState<MyApp> {
  @override
  initStates() {
    GetItConfig().configGetIt();
  }

  @override
  initBuild() => _initProvider();

  _initProvider() => MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => getIt<StartProvider>())
        ],
        child: _initMaterial(),
      );

  _initMaterial() => MaterialApp(
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
