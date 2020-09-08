import 'package:flutter/material.dart';

import 'package:frame_master/export/export_config.dart';
import 'package:frame_master/export/export_home.dart';
import 'package:frame_master/export/export_launch.dart';
import 'package:frame_master/export/export_util.dart';
import 'package:frame_master/export/export_view.dart';
import 'package:frame_master/generated/l10n.dart';

import 'package:provider/provider.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

/// @time 2020/8/28 12:06 PM
/// @author gyy
/// @describe: MyApp

class MyAppPage extends BaseFulWidget {
  @override
  BaseFulState<StatefulWidget> getBaseFulState() => _MyAppStatePage();
}

class _MyAppStatePage extends BaseFulState<MyAppPage> {
  @override
  initStates() {
    GetIt().registerGetIt();
  }

  @override
  initBuild() => _initProvider();

  _initProvider() => MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => getIt<StartProvider>()),
          ChangeNotifierProvider(create: (_) => getIt<HomeProvider>()),
        ],
        child: _initMaterial(),
      );

  _initMaterial() => MaterialApp(
        navigatorKey: Keys.navigatorKey,
        initialRoute: "/",
        routes: RoutePath.appRoute,
        title: 'Flutter Frame',
        theme: ThemeData(),
        //初始化Toast
        builder: BotToastInit(),
        navigatorObservers: [BotToastNavigatorObserver()],
        home: StartPage(),
        debugShowCheckedModeBanner: false,
        //国际化
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate
        ],
        // 讲zh设置为第一项,没有适配语言时，英语为首选项
        supportedLocales: S.delegate.supportedLocales,
      );
}
