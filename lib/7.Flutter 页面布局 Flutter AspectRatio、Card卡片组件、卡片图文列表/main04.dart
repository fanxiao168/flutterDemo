import 'package:flutter/material.dart';


/*
一、Flutter AspectRatio 组件 AspectRatio 的作用是根据设置调整子元素 child 的宽高比。
AspectRatio 首先会在布局限制条件允许的范围内尽可能的扩展，widget 的高度是由宽 度和比率决定的，类似于 BoxFit 中的 contain，
按照固定比率去尽量占满区域。
如果在满足所有限制条件过后无法找到一个可行的尺寸，AspectRatio 最终将会去优先 适应布局限制条件，而忽略所设置的比率。

属性                                      说明
aspectRatio                  宽高比，最终可能不会根据这个值去布局， 具体则要看综合因素，外层是否允许按照这 种比率进行布局，这只是一个参考值
child                                     子组件

二、Flutter Card 组件
Card 是卡片组件块，内容可以由大多数类型的 Widget 构成，Card 具有圆角和阴影，这让它 看起来有立体感。
属性                                    说明
margin                                外边距
child                                 子组件
Shape                           Card 的阴影效果，默认的阴影效果为圆角的 长方形边。

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
    return  ListView(
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 20/9,
                  child:Image.network("https://www.itying.com/images/flutter/2.png",fit: BoxFit.cover),
                ),
                ListTile(
                  leading: ClipOval(
                    child: Image.network("https://www.itying.com/images/flutter/2.png",fit: BoxFit.cover,height:60,width:60),
                  ),
                  title: Text("xxxx"),
                  subtitle: Text("xxxxxxxx"),
                ),

              ],
            ),
          ),
             Card(
            margin: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 20/9,
                  child:Image.network("https://www.itying.com/images/flutter/3.png",fit:BoxFit.cover),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage("https://www.itying.com/images/flutter/3.png"),
                  ),
                  title: Text("xxxxxxxx"),
                  subtitle: Text("xxxxxx"),
                ),
              ],
            ),
          ),

        ],
    );
  }
}
