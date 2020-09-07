import 'package:flutter/material.dart';
import 'package:frame_master/export/export_config.dart';
import 'package:frame_master/page/home/provider/home_provider.dart';
import 'package:frame_master/util/screen_util.dart';

/// @time 2020/8/28 12:06 PM
/// @author gyy
/// @describe: HomePage

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeProvider _homeProvider = getIt.get<HomeProvider>();

  Future _future;

  @override
  void initState() {
    super.initState();
    _future = _homeProvider.initRequest();
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
        return Center(
          child: Text('还没有开始网络请求'),
        );
      case ConnectionState.active:
        return Text('ConnectionState.active');
      case ConnectionState.waiting:
        return Center(
          child: CircularProgressIndicator(),
        );
      case ConnectionState.done:
        if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        }
        return _createListView(context, snapshot);
      default:
        return null;
    }
  }

  Widget _createListView(BuildContext context, AsyncSnapshot snapshot) {
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
}
