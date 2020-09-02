import 'package:dio/dio.dart';
import 'package:frame_master/serve/net/base_code.dart';
import 'package:frame_master/serve/net/base_dio.dart';
import 'package:frame_master/serve/net/dio/dio_error.dart';
import 'package:frame_master/serve/net/dio/dio_process.dart';

/// @time 2020/9/1 9:21 AM
/// @author gyy
/// @describe: 网络请求

class HttpUtil {
  Dio _dio;
  BaseDio _baseDio;
  BaseCode _baseCode;

  // 工厂模式
  factory HttpUtil() => _getInstance();

  static HttpUtil get instance => _getInstance();
  static HttpUtil _instance;

  static HttpUtil _getInstance() {
    if (_instance == null) {
      _instance = HttpUtil._internal();
    }
    return _instance;
  }

  // 初始化
  HttpUtil._internal() {
    if (_dio == null) {
      _baseDio = BaseDio();
      _baseCode = BaseCode();
      _dio = _baseDio.initDio();
    }
  }

  /// get请求
  /// @params path 请求路径
  /// @params params 请求参数
  /// @params options dio基本信息配置
  Future<Response> getRequest(
    String path, {
    Map params,
    Options options,
  }) async {
    try {
      Response response = await _dio.get(path,
          options: options,
          queryParameters: params,
          onReceiveProgress: DioProgress.dioSendProgress);
      return _baseCode.requestResult(response);
    } on DioError catch (e) {
      DioErrors.formatError(e);
      return null;
    }
  }

  /// post请求
  /// @params path 请求路径
  /// @params params 请求参数
  /// @params data 文本提交
  /// @params options dio基本信息配置
  Future postRequest(
    String path, {
    Map params,
    Map formatData,
    Options options,
  }) async {
    try {
      Response response = await _dio.post(
        path,
        options: options,
        data: formatData,
        onReceiveProgress: DioProgress.dioReceiveProgress,
        onSendProgress: DioProgress.dioSendProgress,
      );
      return _baseCode.requestResult(response);
    } on DioError catch (e) {
      DioErrors.formatError(e);
      return null;
    }
  }

  /// down请求
  /// @params path 请求路径
  /// @params save 存储路径
  /// @params
  /// @params
  Future downloadRequest(
    String path,
    String savePath, {
    Map params,
    Map formatData,
    Options options,
  }) async {
    try {
      Response response = await _dio.download(path, savePath,
          queryParameters: params,
          data: formatData,
          options: options,
          onReceiveProgress: DioProgress.dioReceiveProgress);
      return _baseCode.requestResult(response);
    } on DioError catch (e) {
      DioErrors.formatError(e);
      return null;
    }
  }
}
