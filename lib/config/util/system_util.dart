import 'package:flutter/material.dart';
import 'package:frame_master/config/cf/cf_key.dart';
import 'package:frame_master/generated/l10n.dart';

/// @time 2020/9/1 5:20 PM
/// @author gyy
/// @describe: app 资源获取

/// 获取本地字符串
S getString() {
  return S.of(getContext());
}

///获取全局上下文
BuildContext getContext() {
  return CfKey.navigatorKey.currentContext;
}
