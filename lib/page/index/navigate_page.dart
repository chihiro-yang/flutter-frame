import 'package:flutter/material.dart';
import 'package:frame_master/util/toast_util.dart';
import 'package:frame_master/view/base/base_state.dart';

/// 导航
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
