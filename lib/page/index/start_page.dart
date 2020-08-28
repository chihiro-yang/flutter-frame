import 'package:flutter/material.dart';
import 'package:frame_master/util/screen_util.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: GestureDetector(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        width: getScreenWidth(),
        height: getScreenHeight(),
        child: Text("我是开始"),
      ),
    )));
  }
}
