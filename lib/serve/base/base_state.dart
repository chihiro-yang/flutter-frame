import 'package:flutter/material.dart';

/// @time 2020/8/31 10:23 AM
/// @author gyy
/// @describe: 基础 State 类

abstract class BaseState<T extends StatefulWidget> extends State<T> {
  @override
  void initState() {
    super.initState();
    initStates();
    registerEvent();
  }

  @override
  Widget build(BuildContext context) {
    buildInit();
    return initBuild();
  }

  //初始化View
  @protected
  initBuild();

  //初始化数据
  initStates() {}

  //初始化数据
  buildInit() {}

  //初始化监听
  bindListener(Key key) {}

  //注册信息
  registerEvent() {}
}
