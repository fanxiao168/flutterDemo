import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          title: TabBar(
            isScrollable: true,
            indicatorSize: TabBarIndicatorSize.label,
            labelColor: Colors.yellow,
            unselectedLabelColor:Colors.white,
            indicatorColor:Colors.yellow,
            tabs: <Widget>[
              Tab(text: "热门"),
              Tab(text: "推荐"),
              Tab(text: "视频"),
              Tab(text: "直播"),
              Tab(text: "历史"),
              Tab(text: "科技"),
              Tab(text: "健康"),
              Tab(text: "军事"),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            RaisedButton(
              child: Text("跳转到表单页面并传值"),
              onPressed: () {
                Navigator.pushNamed(context, "/form",
                    arguments: {"title": "我是表单传值"});
              },
              color: Theme.of(context).accentColor,
              textTheme: ButtonTextTheme.primary,
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text("我是推荐"),
                ),
                ListTile(
                  title: Text("我是推荐"),
                ),
                ListTile(
                  title: Text("我是推荐"),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text("我是视频"),
                ),
                ListTile(
                  title: Text("我是视频"),
                ),
                ListTile(
                  title: Text("我是视频"),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text("我是直播"),
                ),
                ListTile(
                  title: Text("我是直播"),
                ),
                ListTile(
                  title: Text("我是直播"),
                ),
              ],
            ), ListView(
              children: <Widget>[
                ListTile(
                  title: Text("我是历史"),
                ),
                ListTile(
                  title: Text("我是历史"),
                ),
                ListTile(
                  title: Text("我是历史"),
                ),
              ],
            ), ListView(
              children: <Widget>[
                ListTile(
                  title: Text("我是科技"),
                ),
                ListTile(
                  title: Text("我是科技"),
                ),
                ListTile(
                  title: Text("我是科技"),
                ),
              ],
            ), ListView(
              children: <Widget>[
                ListTile(
                  title: Text("我是健康"),
                ),
                ListTile(
                  title: Text("我是健康"),
                ),
                ListTile(
                  title: Text("我是健康"),
                ),
              ],
            ), ListView(
              children: <Widget>[
                ListTile(
                  title: Text("我是军事"),
                ),
                ListTile(
                  title: Text("我是军事"),
                ),
                ListTile(
                  title: Text("我是军事"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
