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
      children: <Widget>[
        ListTile(
          title: Text(
            '华北黄淮高温持续 南方强降雨今起强势登场',
            style: TextStyle(
              fontSize: 20
              ),
          ),
          subtitle: Text(
            "中国天气网讯 21日开始，北方今年首轮大范围高温拉开序幕，昨天是高温发展的最鼎盛阶段",
            style: TextStyle(
              fontSize: 10
            ),
          ),
        ),
        ListTile(
          title: Text(
            '中国13家运营波音737MAX航空公司均已提出索赔场',
          ),
          subtitle: Text(
            "中国天气网讯 21日开始，北方今年首轮大范围高温拉开序幕，昨天是高温发展的最鼎盛阶段",
            style: TextStyle(
              fontSize: 10
            ),
          ),
        ),
        ListTile(
          title: Text(
            '华北黄淮高温雨今起强势登场',
          ),
          subtitle: Text(
            "中国天气网讯 21日开始，北方今年首轮大范围高温拉开序幕，昨天是高温发展的最鼎盛阶段",
            style: TextStyle(
              fontSize: 10
            ),
          ),
        ),
        ListTile(
          title: Text(
            '华北黄淮高温持续 南方强降雨今起强势登场',
          ),
        ),
        ListTile(
          title: Text(
            '华北黄淮高温持续 南方强降雨今起强势登场',
          ),
        ),
        ListTile(
          title: Text(
            '华北黄淮高温持续 南方强降雨今起强1111势登场',
          ),
        ),
        ListTile(
          title: Text(
            '华北黄淮高温持续 南方强降雨今起强12势登场',
          ),
        ),
        ListTile(
          title: Text(
            '华北黄淮高温持续 南方强降雨今起强13势登场',
          ),
        ),
        ListTile(
          title: Text(
            '华北黄淮高温持续 南方强降雨今起强14势登场',
          ),
        ),
        ListTile(
          title: Text(
            '华北黄淮高温持续 南方强降雨今起强15势登场',
          ),
        ),
        ListTile(
          title: Text(
            '华北黄淮高温持续 南方强降雨今起强16势登场',
          ),
        ),
        ListTile(
          title: Text(
            '华北黄淮高温持续 南方强降雨今起强17势登场',
          ),
        ),
        ListTile(
          title: Text(
            '华北黄淮高温持续 南方强降雨今起强18势登场',
          ),
        ),
        ListTile(
          title: Text(
            '华北黄淮高温持续 南方强降雨今起强19势登场',
          ),
        ),
        ListTile(
          title: Text(
            '华北黄淮高温持续 南方强降雨今起强20势登场',
          ),
        ),
        ListTile(
          title: Text(
            '华北黄淮高温持续 南方强降雨今起强21势登场',
          ),
        ),
      ],
    );
  }
}