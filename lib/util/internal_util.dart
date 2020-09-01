import 'package:flutter/material.dart';
import 'package:frame_master/generated/l10n.dart';

/// @time 2020/9/1 6:08 PM
/// @author gyy
/// @describe: 国际化相关

class InternalUtil {
  //切换语言（需刷新UI）
  void switchLanguage({Locale locale}) => S.load(locale);
}
