
import 'package:frame_master/config/regexp/regexp.dart';

/// @time 2020/8/28 3:43 PM
/// @author gyy
/// @describe: 正则校验

class RegexUtil {
  //手机号码校验（中国大陆）
  static bool verifyMobile(String inputStr) {
    return ConfigRegexp.matches(ConfigRegexp.regexMobileExact, inputStr);
  }

  //邮箱校验
  static bool verifyEmail(String inputStr) {
    return ConfigRegexp.matches(ConfigRegexp.regexEmail, inputStr);
  }

  //密码校验
  static bool verifyPwd(String inputStr) {
    return ConfigRegexp.matches(ConfigRegexp.regexPwd1, inputStr);
  }

  // 校验身份证合法性
  bool verifyCardId(String inputStr) {
    const Map city = {11: "北京", 12: "天津", 13: "河北", 14: "山西", 15: "内蒙古", 21: "辽宁", 22: "吉林", 23: "黑龙江 ", 31: "上海", 32: "江苏", 33: "浙江", 34: "安徽", 35: "福建", 36: "江西", 37: "山东", 41: "河南", 42: "湖北 ", 43: "湖南", 44: "广东", 45: "广西", 46: "海南", 50: "重庆", 51: "四川", 52: "贵州", 53: "云南", 54: "西藏 ", 61: "陕西", 62: "甘肃", 63: "青海", 64: "宁夏", 65: "新疆", 71: "台湾", 81: "香港", 82: "澳门", 91: "国外 "};
    String tip = '';
    bool pass = true;

    if(inputStr == null || inputStr.isEmpty ||ConfigRegexp.matches(ConfigRegexp.idCard, inputStr) ) {
      tip = '身份证号格式错误';
      print(tip);
      pass = false;
      return pass;
    }
    if(city[int.parse(inputStr.substring(0,2))] == null) {
      tip = '地址编码错误';
      print(tip);
      pass = false;
      return pass;
    }
    // 18位身份证需要验证最后一位校验位，15位不检测了，现在也没15位的了
    if (inputStr.length == 18) {
      List numList = inputStr.split('');
      //∑(ai×Wi)(mod 11)
      //加权因子
      List factor = [7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2];
      //校验位
      List parity = [1, 0, 'X', 9, 8, 7, 6, 5, 4, 3, 2];
      int sum = 0;
      int ai = 0;
      int wi = 0;
      for (var i = 0; i < 17; i++) {
        ai = int.parse(numList[i]);
        wi = factor[i];
        sum += ai * wi;
      }
      if (parity[sum % 11].toString() != numList[17]) {
        tip = "校验位错误";
        print(tip);
        pass = false;
      }
    }else {
      tip = '身份证号不是18位';
      print(tip);
      pass = false;
    }
    return pass;
  }
}
