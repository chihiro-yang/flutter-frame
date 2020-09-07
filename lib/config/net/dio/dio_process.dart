/// @time 2020/9/1 9:21 AM
/// @author gyy
/// @describe: dio 进度

class DioProgress {
  /// dio 上传进度
  static void dioSendProgress(int send, int total) {
    print("---------------------上传进度---------------------" + ((send / total) * 100).toStringAsFixed(0) + "%");
  }

  /// dio 下载进度
  static void dioReceiveProgress(int received, int total) {
    print("---------------------下载进度--------------------- " + (received / total * 100).toStringAsFixed(0) + "%");
  }
}
