import 'package:flutter/material.dart';

/*
一、Flutter Paddiing 组件
在 html 中常见的布局标签都有 padding 属性，但是 Flutter 中很多 Widget 是没有 padding 属 性。
这个时候我们可以用 Padding 组件处理容器与子元素直接的间距。
属性                                  说明
padding                       padding 值, EdgeInsetss 设置填充的值
child                               子组件

二、Flutter Row 水平布局组件
属性                            说明
mainAxisAlignment             主轴的排序方式
crossAxisAlignment            次轴的排序方式
children                      组件子元素

三、Flutter Column 垂直布局组件
属性                                      说明
mainAxisAlignment                      主轴的排序方式
crossAxisAlignment                     次轴的排序方式
children                               组件子元素


四、Flutter Expanded 类似 Web 中的 Flex 布局
Expanded 可以用在 Row 和 Column 布局中
属性                                        说明
flex                            元素站整个父 Row /Column 的比例
child                                   子元素
*/



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('flutter mo'),
        ),
        body: LayoutDemo(),
      ),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1.7,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network("https://www.itying.com/images/flutter/1.png",
            fit: BoxFit.cover),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network("https://www.itying.com/images/flutter/2.png",
            fit: BoxFit.cover),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network("https://www.itying.com/images/flutter/3.png",
            fit: BoxFit.cover),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network("https://www.itying.com/images/flutter/4.png",
            fit: BoxFit.cover),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network("https://www.itying.com/images/flutter/5.png",
            fit: BoxFit.cover),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network("https://www.itying.com/images/flutter/6.png",
            fit: BoxFit.cover),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network("https://www.itying.com/images/flutter/1.png",
            fit: BoxFit.cover),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network("https://www.itying.com/images/flutter/2.png",
            fit: BoxFit.cover),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network("https://www.itying.com/images/flutter/3.png",
            fit: BoxFit.cover),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network("https://www.itying.com/images/flutter/4.png",
            fit: BoxFit.cover),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network("https://www.itying.com/images/flutter/5.png",
            fit: BoxFit.cover),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.network("https://www.itying.com/images/flutter/6.png",
            fit: BoxFit.cover),
          ),

        ],
      ),
    );
  }
}
