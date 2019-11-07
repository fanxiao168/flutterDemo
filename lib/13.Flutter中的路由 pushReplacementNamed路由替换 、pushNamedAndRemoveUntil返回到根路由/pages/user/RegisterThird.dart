import 'package:flutter/material.dart';
import '../Tabs.dart';

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
              //  Navigator.of(context).pop();
              Navigator.of(context).pushAndRemoveUntil(
                //注意:这个的 Tabs(index: 2) 需要在tabs组件添加index 选中的tab模块
                new MaterialPageRoute(builder: (context)=> new Tabs(index: 2)),
                (route)=>route == null 
                );
             },
           )
         ],
       ),
    );
  }
}