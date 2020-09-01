import 'package:flutter/material.dart';
import 'package:frame_master/generated/l10n.dart';
import 'package:frame_master/serve/config/system_config.dart';

/// @time 2020/9/1 5:20 PM
/// @author gyy
/// @describe:

/// 获取本地字符串
S getString() {
  return S.of(getApplicationContext());
}

///获取全局上下文
BuildContext getApplicationContext() {
  return ContextConfig.navigatorKey.currentContext;
}

