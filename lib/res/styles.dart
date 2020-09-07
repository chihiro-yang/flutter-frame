import 'package:flutter/widgets.dart';
import 'package:frame_master/util/screen_util.dart';

import 'colors.dart';
import 'dimens.dart';

/// @time 2020/9/1 9:21 AM
/// @author gyy
/// @describe: 样式

class TextStyles {
  static TextStyle listTitle = TextStyle(
      fontSize: setFontSize(Dimens.font_sp16),
      color: Colors.gray_f0,
      fontWeight: FontWeight.bold);

  static TextStyle listContent =
      TextStyle(fontSize: Dimens.font_sp14, color: Colors.gray_f0);

  static TextStyle listExtra =
      TextStyle(fontSize: Dimens.font_sp12, color: Colors.green_62);
}
