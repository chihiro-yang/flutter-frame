import 'package:flutter/cupertino.dart';

/// @time 2020/8/23 2:25 PM
/// @version 1.00
/// @author 高扬

class BaseWidget extends StatefulWidget {
  @override
  State<BaseWidget> createState() => BaseWidgetState();
}

class BaseWidgetState<T extends BaseWidget> extends State<T> {
  @override
  void initState() {
    super.initState();
    initData();
  }

  @override
  Widget build(BuildContext context) {
    return buildView(context);
  }

  //初始化View
  buildView(BuildContext context) {}

  //初始化数据
  void initData() {}
}
