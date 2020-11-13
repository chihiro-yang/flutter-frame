/// @time 2020/8/28 3:59 PM
/// @author gyy
/// @describe: 正则配置

class ConfigRegexp {
  ///邮箱校验
  static final String regexEmail =
      '^\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*\$';

  ///手机号码校验
  static final String regexMobileExact =
      '^1(3([0-35-9]\d|4[1-8])|4[14-9]\d|5([0125689]\d|7[1-79])|66\d|7[2-35-8]\d|8\d{2}|9[13589]\d)\d{7}\$';

  /// 必须包含字母和数字, 6~18.
  static const String regexPwd1 =
      '^(?![0-9]+\$)(?![a-zA-Z]+\$)[0-9A-Za-z]{6,18}\$';

  /// 必须包含字母和数字,可包含特殊字符 6~18.
  static const String regexPwd2 =
      '^(?![0-9]+\$)(?![a-zA-Z]+\$)[0-9A-Za-z\\W]{6,18}\$';

  /// 必须包含字母和数字和殊字符, 6~18.
  static const String regexPwd3 =
      '^(?![0-9]+\$)(?![a-zA-Z]+\$)(?![0-9a-zA-Z]+\$)(?![0-9\\W]+\$)(?![a-zA-Z\\W]+\$)[0-9A-Za-z\\W]{6,18}\$';

  ///必须包含字母区分大小写和数字,不包含特殊字符
  static const String regexPwd4 =
      '^(?=.*[0-9].*)(?=.*[A-Z].*)(?=.*[a-z].*).{8,20}\$';

  ///身份证号码校验
  static const String idCard = r'^\d{6}(18|19|20)?\d{2}(0[1-9]|1[012])(0[1-9]|[12]\d|3[01])\d{3}(\d|X)$';

  //正则校验
  static bool matches(String regex, String input) {
    if (input == null || input.isEmpty) return false;
    return RegExp(regex).hasMatch(input);
  }
}
