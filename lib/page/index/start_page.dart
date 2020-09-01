import 'package:flutter/material.dart';
import 'package:frame_master/page/index/provider/start_provider.dart';
import 'package:frame_master/util/get_it_util.dart';
import 'package:frame_master/util/screen_util.dart';
import 'package:frame_master/view/base/base_state.dart';
import 'package:frame_master/view/base/base_widget.dart';

class StartPage extends StatefulWidget {
  @override
  _StartState createState() => _StartState();
}

class _StartState extends BaseState<StartPage> {
  StartProvider _startProvider = getIt.get<StartProvider>();

  GestureDetector ges1, ges2;

  @override
  initStates() {
    _startProvider.initAdvert(context);
  }

  @override
  buildInit() {
    _startProvider.initScreens(context);
  }

  @override
  initBuild() => BaseWidget.scaffold(appBar: AppBar(), child: _startView());

  _startView() => Container(
      width: getScreenWidth(),
      height: getScreenHeight(),
      child: ges1 = GestureDetector(
        onTap: () {
          bindListener(ges1.key);
        },
        child: Center(
          child: Text("阿斯顿"),
        ),
      ));

  @override
  bindListener(Key key) {
    if (ges1.key == key) {}
  }
}
