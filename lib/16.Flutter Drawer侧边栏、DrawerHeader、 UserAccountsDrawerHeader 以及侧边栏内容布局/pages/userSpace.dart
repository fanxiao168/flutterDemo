import 'package:flutter/material.dart';

class UserSpacePage extends StatelessWidget {
  const UserSpacePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我的空间"),
      ),
      body: Text("我的空间页面"),
    );
  }
}