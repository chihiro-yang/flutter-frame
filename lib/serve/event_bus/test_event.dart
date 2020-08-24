import 'package:event_bus/event_bus.dart';

///详细用法 参照官网
EventBus eventBus = EventBus();

class TextEvent {
  //传递的消息
  String message;

  TextEvent(this.message);
}
