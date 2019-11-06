import 'package:flutter/material.dart';
import 'pages/Tabs.dart';


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

