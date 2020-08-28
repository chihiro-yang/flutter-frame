import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:frame_master/util/http_util.dart';
import 'package:frame_master/util/screen_util.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future _future;

  @override
  void initState() {
    super.initState();
    _future = fetchPost();
  }

  @override
  Widget build(BuildContext context) {
    initApp(context);
    return Scaffold(
      body: FutureBuilder(future: _future, builder: _buildFuture),
    );
  }

  initApp(BuildContext context) {
    initScreen(context);
  }

  Widget _buildFuture(BuildContext context, AsyncSnapshot snapshot) {
    switch (snapshot.connectionState) {
      case ConnectionState.none:
        print("1");
        return Center(
          child: Text('还没有开始网络请求'),
        );
      case ConnectionState.active:
        print("2");
        return Text('ConnectionState.active');
      case ConnectionState.waiting:
        print('3');
        return Center(
          child: CircularProgressIndicator(),
        );
      case ConnectionState.done:
        if (snapshot.hasError) {
          print("4");
          return Text('Error: ${snapshot.error}');
        }
        print("5");
        return _createListView(context, snapshot);
      default:
        return null;
    }
  }

  Widget _createListView(BuildContext context, AsyncSnapshot snapshot) {
    // List movies = snapshot.data['subjects'];
    return ListView.builder(
      itemBuilder: (context, index) => _itemBuilder(context, index),
      itemCount: 10,
    );
  }

  Widget _itemBuilder(BuildContext context, int index) {
    if (index.isOdd) {
      return Divider();
    }
    index = index ~/ 2;
    return ListTile(
      title: Text("123"),
      leading: Text("456"),
      trailing: Text("789"),
    );
  }

  Future<String> _getData() {
    HttpUtil.instance.getRequest(
        "/oauth/2.0/token?grant_type=client_credentials&client_id=u7mOiKzzSLiCRLGE9cbCFRx0&client_secret=sdkmZHe9I9qheIhgKGPeltdbFeObOiHD");
    return null;
  }

  Future<CommonModel> fetchPost() async {
    Dio dio = Dio();
    final response = await dio.get(
        'https://www.devio.org/io/flutter_app/json/test_common_model.json');
    return CommonModel.fromJson((response.data));
  }
}

class CommonModel {
  final String icon;
  final String title;
  final String url;
  final String statusBarColor;
  final bool hideAppBar;

  CommonModel(
      {this.icon, this.title, this.url, this.statusBarColor, this.hideAppBar});

  factory CommonModel.fromJson(Map<String, dynamic> json) {
    return CommonModel(
      icon: json['icon'],
      title: json['title'],
      url: json['url'],
      statusBarColor: json['statusBarColor'],
      hideAppBar: json['hideAppBar'],
    );
  }
}
