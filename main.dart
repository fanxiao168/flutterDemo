import 'package:flutter/material.dart';
import 'routes/routes.dart';

/*
四、Flutter 中的命名路由 及命名路由传值
*/
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/", 
      onGenerateRoute: onGenerateRoute
    );
  }
}

