import 'package:flutter/material.dart';


/*
一、Flutter 中自定义有状态组件
在 Flutter 中自定义组件其实就是一个类，这个类需要继承 StatelessWidget/StatefulWidget。
StatelessWidget 是无状态组件，状态不可变的 widget
StatefulWidget 是有状态组件，持有的状态可能在 widget 生命周期改变。
通俗的讲:如果我 们想改变页面中的数据的话这个时候就需要用到 StatefulWidget
*/

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('flutter Demo'),
        ),
        body: HomePage(),
      ),
    );
  }
}

//自定义有状态组件
class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int countNum = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
       children: <Widget>[
         SizedBox(height: 200),
         Chip(
           label: Text("${this.countNum}"),
         ),
         SizedBox(height: 20),
         RaisedButton(
           child: Text("按钮"),
           onPressed: (){
             setState(() {
               this.countNum++;
             });
           },
         )
       ],
    );
  }
}
