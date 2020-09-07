import 'package:event_bus/event_bus.dart';

/// @time 2020/9/7 10:58 AM
/// @author gyy
/// @describe:

EventBus _eventBus = EventBus();

class BusUtil {
  //发送广播
  static void fireEvent(var event) => _eventBus.fire(event);

  //注册EventBus
  static void registerEvent<T>(Function callBack) {
    _eventBus.on<T>().listen((event) {
      callBack(event);
    });
  }

  //销毁广播
  static void destroyEvent() => _eventBus.destroy();
}
