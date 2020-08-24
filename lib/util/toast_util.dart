import 'package:bot_toast/bot_toast.dart';

class ToastUtil {
  static void showToast(String msg) {
    if (msg != null && msg.trim().isNotEmpty) {
      BotToast.showText(text: msg);
    }
  }
}
