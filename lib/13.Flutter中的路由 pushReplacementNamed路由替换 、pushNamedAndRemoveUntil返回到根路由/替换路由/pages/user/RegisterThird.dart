import 'package:flutter/material.dart';

class RegisterThirdPage extends StatefulWidget {
  RegisterThirdPage({Key key}) : super(key: key);

  @override
  _RegisterThirdPageState createState() => _RegisterThirdPageState();
}

class _RegisterThirdPageState extends State<RegisterThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text("完成注册"),
       ),
       body: Column(
         children: <Widget>[
           Text("输入密码完成注册"),
           RaisedButton(
             child: Text("确定"),
             onPressed: (){
               Navigator.of(context).pop();
             },
           )
         ],
       ),
    );
  }
}