import 'package:flutter/material.dart';
import 'package:frame_master/ui/dialog/loading_view.dart';

/// @time 2020/9/1 9:21 AM
/// @author gyy
/// @describe: 加载框

class LoadingDialog {
  ///显示加载动画
  static void show(BuildContext context,
      {double bottomMargin = 0.0, double bottomPadding = 0.0}) {
    showGeneralDialog(
        context: context,
        barrierLabel: " ",
        barrierDismissible: false,
        transitionDuration: Duration(milliseconds: 300),
        //barrierColor: Colors.black.withOpacity(0.5),
        pageBuilder:
            (BuildContext context, Animation animation, Animation secondaryAnimation) {
          return LoadingView(bottomMargin, bottomPadding);
        }).then((val) {});
  }

  ///关闭加载动画
  static void cancel(BuildContext context) {
    if (Navigator.canPop(context)) {
      Navigator.pop(context);
    }
  }
}
