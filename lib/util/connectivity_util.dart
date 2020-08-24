import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';

/// 获取网络状态
class ConnectivityUtil {
  //网络状态流侦听
  static StreamSubscription _streamSubscription;

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
  static void listenNetWorkState() {
    _streamSubscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult connectivityResult) {
      switch (connectivityResult) {
        case ConnectivityResult.mobile:
          break;
        case ConnectivityResult.wifi:
          break;
        case ConnectivityResult.none:
          break;
      }
    });
  }

  // 注销 网络侦听
  void cancelListenNetWork() {
    if (_streamSubscription != null) {
      _streamSubscription.cancel();
    }
  }

  //获取wifi信息-暂未配置
  void getWifiInfo() {}
}
