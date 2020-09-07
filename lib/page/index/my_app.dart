import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:frame_master/config/base/base_ful_widget.dart';
import 'package:frame_master/config/cf/cf_gei_it.dart';
import 'package:frame_master/config/cf/cf_key.dart';
import 'package:frame_master/config/route/route_path.dart';
import 'package:frame_master/config/util/get_it_util.dart';
import 'package:frame_master/generated/l10n.dart';
import 'package:frame_master/page/home/provider/home_provider.dart';
import 'package:frame_master/page/index/provider/start_provider.dart';
import 'package:frame_master/page/index/start_page.dart';
import 'package:provider/provider.dart';

/// @time 2020/8/28 12:06 PM
/// @author gyy
/// @describe: MyApp

class MyApp extends BaseFulWidget {
  @override
  BaseFulState<StatefulWidget> getBaseFulState() => _MyAppState();
}

class _MyAppState extends BaseFulState<MyApp> {
  @override
  initStates() {
    CfGetIt().registerGetIt();
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
        navigatorKey: CfKey.navigatorKey,
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
