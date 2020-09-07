import 'package:flutter/cupertino.dart';

/// @time 2020/9/4 6:33 PM
/// @author gyy
/// @describe: : StateLessWidget 基础类

abstract class BaseLessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => initBuild();

  @protected
  initBuild();
}
