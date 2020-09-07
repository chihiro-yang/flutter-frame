import 'package:frame_master/comn/config/config_regexp.dart';

/// @time 2020/8/28 3:43 PM
/// @author gyy
/// @describe: 正则校验

class RegexUtil {
  //手机号码校验（中国大陆）
  static bool checkMobile(String inputStr) {
    return ConfigRegexp.matches(ConfigRegexp.regexMobileExact, inputStr);
  }

  //邮箱校验
  static bool checkEmail(String inputStr) {
    return ConfigRegexp.matches(ConfigRegexp.regexEmail, inputStr);
  }

  //密码校验
  static bool checkPwd(String inputStr) {
    return ConfigRegexp.matches(ConfigRegexp.regexPwd1, inputStr);
  }
}
