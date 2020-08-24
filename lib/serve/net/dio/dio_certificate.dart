import 'dart:io';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';

///配置证书
class DioCertificate {
  ///忽略证书
  static void dioIgnoreCertificate(Dio _dio) {
    //忽略证书
    (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate = (client) {
      client.badCertificateCallback = (X509Certificate cert, String host, int port) {
        return true;
      };
    };
  }

  ///抓包证书(由于服务器配置未认证证书 添加忽略证书)
  static void dioClutchCertificate(Dio _dio) {
    //抓包ip + 忽略证书
    (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate = (client) {
      client.findProxy = (uri) {
        return "PROXY 192.168.43.232:8081";
      };
      //忽略证书
      client.badCertificateCallback = (X509Certificate cert, String host, int port) {
        return true;
      };
    };
  }

  ///配置证书
  static void dioCertificate(Dio _dio) {
    (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate = (client) {
      SecurityContext sc = new SecurityContext();
      //file is the path of certificate
      //sc.setTrustedCertificates(file);
      HttpClient httpClient = new HttpClient(context: sc);
      return httpClient;
    };
  }
}
