import 'package:bot_toast/bot_toast.dart';

/// @time 2020/9/1 9:21 AM
/// @author gyy
/// @describe: toast弹框

class ToastUtil {
  static void showToast(String msg) {
    if (msg != null && msg.trim().isNotEmpty) {
      BotToast.showText(text: msg);
    }
  }
}
