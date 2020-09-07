import 'package:frame_master/page/home/provider/home_provider.dart';
import 'package:frame_master/page/index/provider/start_provider.dart';

import 'get_it_util.dart';

/// @time 2020/9/1 2:11 PM
/// @author gyy
/// @describe: 配置getIt

class GetIt {
  registerGetIt() {
    getIt.registerSingleton<HomeProvider>(HomeProvider());
    getIt.registerSingleton<StartProvider>(StartProvider());
  }
}
