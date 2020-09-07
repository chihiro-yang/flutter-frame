/// @time 2020/8/28 3:59 PM
/// @author gyy
/// @describe: 正则配置

class ConfigRegexp {
  ///邮箱校验
  static final String regexEmail =
      '^\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*\$';

  ///手机号码
  static final String regexMobileExact =
      '^((13[0-9])|(14[5,7])|(15[0-3,5-9])|(16[6])|(17[0,1,3,5-8])|(18[0-9])|(19[1,8,9]))\\d{8}\$';

  /// 必须包含字母和数字, 6~18.
  static const String regexPwd1 =
      '^(?![0-9]+\$)(?![a-zA-Z]+\$)[0-9A-Za-z]{6,18}\$';

  /// 必须包含字母和数字,可包含特殊字符 6~18.
  static const String regexPwd2 =
      '^(?![0-9]+\$)(?![a-zA-Z]+\$)[0-9A-Za-z\\W]{6,18}\$';

  /// 必须包含字母和数字和殊字符, 6~18.
  static const String regexPwd3 =
      '^(?![0-9]+\$)(?![a-zA-Z]+\$)(?![0-9a-zA-Z]+\$)(?![0-9\\W]+\$)(?![a-zA-Z\\W]+\$)[0-9A-Za-z\\W]{6,18}\$';

  //正则校验
  static bool matches(String regex, String input) {
    if (input == null || input.isEmpty) return false;
    return RegExp(regex).hasMatch(input);
  }
}
