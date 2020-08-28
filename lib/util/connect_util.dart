import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';

/// 获取网络状态
class ConnectivityUtil {

  //获得 网络连接状态
  static void getNetWorkState(
      {VoidCallback mobileCallBack,
      VoidCallback wifiCallBack,
      VoidCallback noneCallBack}) async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile) {
      mobileCallBack();
    } else if (connectivityResult == ConnectivityResult.wifi) {
      wifiCallBack();
    } else {
      noneCallBack();
    }
  }

  //侦听 网络连接状态
  static StreamSubscription listenNetWorkState() {
    StreamSubscription _streamSubscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult connectivityResult) {
      switch (connectivityResult) {
        case ConnectivityResult.mobile:
          break;
        case ConnectivityResult.wifi:
          break;
        case ConnectivityResult.none:
          break;
        default:
          break;
      }
    });
    return _streamSubscription;
  }
}
