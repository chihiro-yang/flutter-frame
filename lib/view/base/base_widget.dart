import 'package:flutter/material.dart';

/// @time 2020/8/28 6:59 PM
/// @author gyy
/// @describe: Base类

class BaseWidget {
  ///基础Scaffold
  static Scaffold scaffold({AppBar appBar, Color bgColor, Widget child}) {
    return Scaffold(appBar: appBar, backgroundColor: bgColor, body: child);
  }
}
