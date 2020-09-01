import 'package:frame_master/page/index/provider/start_provider.dart';
import 'package:frame_master/util/get_it_util.dart';
import 'package:get_it/get_it.dart';

/// @time 2020/9/1 2:11 PM
/// @author gyy
/// @describe: 配置getIt

class GetItConfig {
  void configGetIt() {
    getIt.registerSingleton<StartProvider>(StartProvider());
  }
}
