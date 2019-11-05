import 'package:flutter/material.dart';


/*
一、Flutter Stack 组件
Stack 表示堆的意思，我们可以用 Stack 或者 Stack 结合 Align 或者 Stack 结合 Positiond 来实
现页面的定位布局
属性                                        说明
alignment                           配置所有子元素的显示位置
children                                  子组件

二、Flutter Stack Align
Stack 组件中结合 Align 组件可以控制每个子元素的显示位置
属性                                     说明
alignment                          配置所有子元素的显示位置
child                                   子组件

三、Flutter Stack Positioned
Stack 组件中结合 Positioned 组件也可以控制每个子元素的显示位置
属性                                  说明
top                           子元素距离顶部的距离
bottom                        子元素距离底部的距离
left                          子元素距离左侧距离
right                         子元素距离右侧距离
child                               子组件
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
    return Center(
      child: Container(
        height: 400,
        width: 300,
        color: Colors.red,
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 0,
              child: Icon(Icons.home,size:40,color:Colors.white),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Icon(Icons.search,size:30,color:Colors.white),
            ),
            Positioned(
              right: 10,
              child: Icon(Icons.settings_applications,size:30,color:Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
