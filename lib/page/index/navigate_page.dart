import 'package:flutter/material.dart';
import 'package:frame_master/serve/base/base_state.dart';
import 'package:frame_master/util/toast_util.dart';

/// @time 2020/8/28 12:06 PM
/// @author gyy
/// @describe: NavigatePage

class NavigatePage extends StatefulWidget {
  @override
  _NavigatePageState createState() => _NavigatePageState();
}

class _NavigatePageState extends BaseState<NavigatePage> {
  @override
  initBuild() => Scaffold(
        appBar: AppBar(),
        body: Center(
          child: GestureDetector(
            onTap: () {
              ToastUtil.showToast(" ");
            },
            child: Text("首页"),
          ),
        ),
      );
}
