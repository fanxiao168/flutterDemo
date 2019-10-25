import 'package:flutter/material.dart';
import 'res/listData.dart';

/*
一、Flutter 列表组件概述
列表布局是我们项目开发中最常用的一种布局方式。Flutter 中我们可以通过 ListView 来定义 列表项，支持垂直和水平方向展示。通过一个属性就可以控制列表的显示方向。列表有一下 分类:
1、垂直列表
2、垂直图文列表 3、水平列表
4、动态列表 5、矩阵式列表(网格布局)

二、Flutter GridView 组件的常用参数 当数据量很大的时候用矩阵方式排列比较清晰。此时我们可以用网格列表组件 GridView 实
现布局。
GridView 创建网格列表有多种方式，下面我们主要介绍两种。
1、可以通过 GridView.count 实现网格布局
2、通过 GridView.builder 实现网格布局 常用属性:
  
名称                            类型                                      说明
scrollDirection               Axis                                      滚动方法
padding                     EdgeInsetsGeometry                          内边距
resolve                       bool                                      组件反向排序
crossAxisSpacing              double                                    水平子 Widget 之间间距
mainAxisSpacing               double                                    垂直子 Widget 之间间距
crossAxisCount                int                                       一行的 Widget 数量
childAspectRatio              double                                    子 Widget 宽高比例
children                                                                <Widget>[ ] 
gridDelegate            SliverGridDelegateWithFixedCrossAxisCount(常用)
                        SliverGridDelegateWithMax                       控制布局主要用在 GridView.builder 里面
*/

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('flutter demo'),
        ),
        body: LayoutDemo(),
      ),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  List<Widget> _getListData() {
    var tempList = listData.map((value) {
      return Container(
          child: Column(
            children: <Widget>[
              Image.network(value["imageUrl"]),
              SizedBox(height: 20),
              Text(
              value["title"],
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
              )
            ],
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: Color.fromRGBO(233, 233, 233, 1),
              width: 1
            )
          ),
        );
    });
    //("xxxxx","xxxx")
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisSpacing: 10, //水平子 Widget 之间间距
      mainAxisSpacing: 10, //垂直子 Widget 之间间距
      padding: EdgeInsets.all(10),
      crossAxisCount: 2, //一行的 Widget 数量
      childAspectRatio: 0.9, //宽度和高度的比例
      children: this._getListData(),
    );
  }
}
