import 'package:event_bus/event_bus.dart';

/// @time 2020/9/1 9:21 AM
/// @author gyy
/// @describe: eventBus 通信

EventBus eventBus = EventBus();

class TextEvent {
  //传递的消息
  String message;

  TextEvent(this.message);
}
