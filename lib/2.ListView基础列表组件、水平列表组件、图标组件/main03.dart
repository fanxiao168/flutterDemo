import 'package:flutter/material.dart';

/*
一、Flutter 列表组件概述
列表布局是我们项目开发中最常用的一种布局方式。Flutter 中我们可以通过 ListView 来定义 列表项，支持垂直和水平方向展示。通过一个属性就可以控制列表的显示方向。列表有一下 分类:
1、垂直列表
2、垂直图文列表 
3、水平列表 
4、动态列表 
5、矩阵式列表


二、Flutter 列表参数
名称                                    类型                                  说明
scrollDirection                       Axis                        Axis.horizontal 水平列表 Axis.vertical 垂直列表
padding                         EdgeInsetsGeometry                内边距
resolve                               bool                        组件反向排序
children                          List<Widget>                    列表元素
*/


void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('flutter demo'),
        ),
        body: HomeContent(),
        ),
    );   
  }
}


class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    return ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[
        ListTile(
          leading: Image.network("https://www.itying.com/images/flutter/1.png"),
          title: Text("华北黄淮高温雨今起强势登场"),
          subtitle: Text("中国天气网讯 21日开始，华北黄淮高温雨今起强势登场"),
        ),
        ListTile(
          title: Text("华北黄淮高温雨今起强势登场"),
          subtitle: Text("中国天气网讯 21日开始，华北黄淮高温雨今起强势登场"),
          trailing: Image.network("https://www.itying.com/images/flutter/2.png"),
        ),
        ListTile(
          leading: Image.network("https://www.itying.com/images/flutter/3.png"),
          title: Text("华北黄淮高温雨今起强势登场"),
          subtitle: Text("中国天气网讯 21日开始，华北黄淮高温雨今起强势登场"),
        ),
        ListTile(
          leading: Icon(Icons.home,color: Colors.yellow),
          title: Text("华北黄淮高温雨今起强势登场"),
          subtitle: Text("中国天气网讯 21日开始，华北黄淮高温雨今起强势登场"),
        ),
        ListTile(
          leading: Icon(Icons.audiotrack),
          title: Text("华北黄淮高温雨今起强势登场"),
          subtitle: Text("中国天气网讯 21日开始，华北黄淮高温雨今起强势登场"),
          trailing: Icon(Icons.hotel),
        ),
      ],
    );
  }
}