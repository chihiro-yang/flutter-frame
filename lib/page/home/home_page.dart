import 'package:flutter/material.dart';
import 'package:frame_master/util/http_util.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<String> _future;

  @override
  void initState() {
    super.initState();
    _future = _getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _future,
        initialData: List(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return null;
              break;
            case ConnectionState.waiting:
              break;
            case ConnectionState.active:
              break;
            case ConnectionState.done:
              break;
          }
          return null;
        },
      ),
    );
  }

  Future<String> _getData() {
    HttpUtil.instance.getRequest(
        "/oauth/2.0/token?grant_type=client_credentials&client_id=u7mOiKzzSLiCRLGE9cbCFRx0&client_secret=sdkmZHe9I9qheIhgKGPeltdbFeObOiHD",
        onSuccess: (response) {

        },
        onError: (error) {

        });
    return null;
  }
}
