import 'package:frame_master/export/export_launch.dart';
import 'package:frame_master/export/export_util.dart';
import 'package:frame_master/page/home/home_provider.dart';

/// @time 2020/9/1 2:11 PM
/// @author gyy
/// @describe: 配置getIt

class GetIt {
  registerGetIt() {
    getIt.registerSingleton<HomeProvider>(HomeProvider());
    getIt.registerSingleton<StartProvider>(StartProvider());
  }
}
