import 'package:flutter/material.dart';


/*
一、Flutter BottomNavigationBar 组件 BottomNavigationBar 是底部导航条，可以让我们定义底部 Tab 切换，bottomNavigationBar
是 Scaffold 组件的参数。

BottomNavigationBar 常见的属性    
属性名                                              说明
items                           List<BottomNavigationBarItem> 底 部 导 航 条按钮集合
iconSize                              icon
currentIndex                          默认选中第几个
onTap                                 选中变化回调函数
fixedColor                             选中的颜色
type                                  BottomNavigationBarType.fixed BottomNavigationBarType.shifting
*/

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tabs()
    );
  }
}

class Tabs extends StatefulWidget {
  Tabs({Key key, int index}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text("Flutter Demo"),
       ),
       body: Text("tabBar"),
       bottomNavigationBar: BottomNavigationBar(
         currentIndex: 1,
         onTap: (int index){
           print(index);
         },
         items: [
           BottomNavigationBarItem(
             icon: Icon(Icons.home),
             title: Text("首页")
           ),
           BottomNavigationBarItem(
             icon: Icon(Icons.category),
             title: Text("分类")
           ),
           BottomNavigationBarItem(
             icon: Icon(Icons.settings),
             title: Text("设置")
           ),
         ],
       ),

    );
  }
}