import 'package:frame_master/serve/fun/regexp_config.dart';

/// @time 2020/8/28 3:43 PM
/// @author gyy
/// @describe: 正则校验

class RegexUtil {
  //手机号码校验（中国大陆）
  static bool checkMobile(String inputStr) {
    return RegexpConfig.matches(RegexpConfig.regexMobileExact, inputStr);
  }

  //邮箱校验
  static bool checkEmail(String inputStr) {
    return RegexpConfig.matches(RegexpConfig.regexEmail, inputStr);
  }

  //密码校验
  static bool checkPwd(String inputStr) {
    return RegexpConfig.matches(RegexpConfig.regexPwd1, inputStr);
  }
}
