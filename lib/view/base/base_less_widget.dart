import 'package:flutter/material.dart';

/// @time 2020/8/23 1:57 PM
/// @version 1.00
/// @author 高扬

abstract class BaseLessWidget extends StatelessWidget {
  static BuildContext buildContext;

  @override
  Widget build(BuildContext context) {
    buildContext = context;
    initData();
    return buildView(context);
  }

  //获取上下文
  void getContext() => buildContext;

  //初始化数据
  void initData();

  //初始化View
  Widget buildView(BuildContext context);
}
