import 'package:flutter/material.dart';
import 'pages/Tabs.dart';
import 'pages/Form.dart';
import 'pages/Search.dart';


/*
四、Flutter 中的命名路由
*/

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Tabs(),
      routes: {
        "/":(context)=>Tabs(),
        "/form":(context)=>FormPage(),
        "/search":(context)=>SearchPage(),
      },
    );
  }
}

