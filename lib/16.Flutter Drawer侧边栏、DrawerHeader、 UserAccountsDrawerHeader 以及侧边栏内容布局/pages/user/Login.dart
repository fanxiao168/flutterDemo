import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text("登陆"),
       ),
       body: Center(
         child: Column(
           children: <Widget>[
             SizedBox(height: 40),
             Text("这是一个登陆页面,点击登陆会执行登陆操作"),
             RaisedButton(
               child: Text("立即登陆"),
               onPressed: (){
                 Navigator.of(context).pop();
               },
             )
           ],
         ),
       )
    );
  }
}