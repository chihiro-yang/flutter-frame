import 'package:flutter/material.dart';
import 'package:frame_master/page/index/provider/start_provider.dart';
import 'package:frame_master/util/screen_util.dart';
import 'package:frame_master/view/base/base_state.dart';
import 'package:frame_master/view/base/base_widget.dart';
import 'package:provider/provider.dart';

class StartPage extends StatefulWidget {
  @override
  _StartState createState() => _StartState();
}

class _StartState extends BaseState<StartPage> {
  StartProvider _startProvider = StartProvider();

  @override
  initStates() {
    _startProvider.initAdvert(context);
  }

  @override
  buildInit() {
    _startProvider.initScreens(context);
  }

  @override
  initBuild() => BaseWidget.baseScaffold(child: _consumerView());

  _consumerView() => Consumer<StartProvider>(
        builder:
            (BuildContext context, StartProvider startProvider, Widget child) {
          _startProvider = startProvider;
          return _startView();
        },
      );

  _startView() => Container(
        width: getScreenWidth(),
        height: getScreenHeight(),
        child: Center(
          child: Text("我是启动页"),
        ),
      );
}
