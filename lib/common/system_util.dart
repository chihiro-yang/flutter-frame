import 'package:flutter/material.dart';
import 'package:frame_master/generated/l10n.dart';

import 'config/config_key.dart';

/// @time 2020/9/1 5:20 PM
/// @author gyy
/// @describe: app 资源获取

/// 获取本地字符串
S getString() => S.of(getAplContext());

///获取全局上下文
BuildContext getAplContext() => ConfigKey.navigatorKey.currentContext;
