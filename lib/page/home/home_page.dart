import 'package:flutter/material.dart';
import 'package:frame_master/util/http_util.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  void getData() {
    HttpUtil.instance
        .getRequest(
            "/oauth/2.0/token?grant_type=client_credentials&client_id=u7mOiKzzSLiCRLGE9cbCFRx0&client_secret=sdkmZHe9I9qheIhgKGPeltdbFeObOiHD")
        .then((value) {});
  }
}
