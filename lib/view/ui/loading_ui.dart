import 'package:flutter/material.dart';
import 'package:frame_master/util/screen_util.dart';

/// @time 2020/9/1 9:21 AM
/// @author gyy
/// @describe: 加载view
class LoadingUi extends StatelessWidget {
  final double bottomMargin;
  final double bottomPadding;

  LoadingUi(this.bottomMargin, this.bottomPadding);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getScreenWidth(),
      height: getScreenHeight(),
      margin: setMargin(bottom: bottomMargin),
      child: Scaffold(
          backgroundColor: Colors.transparent, body: _childLoadingAnimated()),
    );
  }

  _childLoadingAnimated() {
    return Container(
      alignment: Alignment.center,
      padding: setPadding(bottom: bottomPadding),
      child: Text("我是加载动画"),
    );
  }
}
