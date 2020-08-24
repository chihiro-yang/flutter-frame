import 'package:flutter/material.dart';
import 'package:frame_master/util/toast_util.dart';

/// 导航
class NavigatePage extends StatefulWidget {
  @override
  _NavigatePageState createState() => _NavigatePageState();
}

 class _NavigatePageState extends State<NavigatePage> {
  @override
  void initState() {
    super.initState();
    String data = "1.22";
setState(() {

});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            ToastUtil.showToast(" ");
          },
          child: Text("首页"),
        ),
      ),
    );
  }
}


