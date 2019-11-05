import 'package:flutter/material.dart';


/*
一、Flutter RaisedButton 定义一个按钮 Flutter 中通过 RaisedButton 定义一个按钮。RaisedButton 里面有很多的参数，这一讲我们只
是简单的进行使用。

二、Wrap 组件
Wrap 可以实现流布局，单行的 Wrap 跟 Row 表现几乎一致，单列的 Wrap 则跟 Row 表 现几乎一致。但 Row 与 Column 都是单行单列的，Wrap 则突破了这个限制，mainAxis 上空 间不足时，则向 crossAxis 上去扩展显示。

属性                                    说明
direction                         主轴的方向，默认水平
alignment                          主轴的对其方式
spacing                            主轴方向上的间距
textDirection                       文本方向
verticalDirection                 定义了 children 摆放顺序，默认是 down，见 Flex 相关属性介绍。
runAlignment                    run 的对齐方式。run 可以理解为新的行或者 列，如果是水平方向布局的话，run 可以理解 为新的一行
runSpacing                          run 的间距

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
        body: LayoutDemo(),
      ),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return RaisedButton(
      child: Text("女装"),
      textColor: Theme.of(context).accentColor,
      onPressed: (){

      },
    );
  }
}
