import 'package:flutter/material.dart';
import 'tabs/Home.dart';
import 'tabs/Category.dart';
import 'tabs/Setting.dart';

class Tabs extends StatefulWidget {
  final index;
  Tabs({Key key, this.index = 0}) : super(key: key);

  _TabsState createState() => _TabsState(this.index);
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  _TabsState(index) {
    this._currentIndex = index;
  }
  List _pageList = [
    HomePage(),
    CategoryPage(),
    SettingPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Flutter Demo"),
      // ),
      floatingActionButton: Container(
        height:80,
        width:80,
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color:Colors.white,
        ),
        child: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              this._currentIndex = 1;
            });
            print("FloatingActionButton");
          },
          backgroundColor: this._currentIndex == 1 ? Colors.red:Colors.yellow,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: this._pageList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._currentIndex, //配置对应的索引值选中
        onTap: (int index) {
          setState(() {
            //改变状态
            this._currentIndex = index;
          });
        },
        iconSize: 36.0, //icon的大小
        fixedColor: Colors.red, //选中的颜色
        type: BottomNavigationBarType.fixed, //配置底部tabs可以有多个按钮
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("首页")),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), title: Text("分类")),
          BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text("设置"))
        ],
      ),

      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  // child: DrawerHeader(
                  //   child: Text("你好flutter"),
                  //   decoration: BoxDecoration(
                  //     // color: Colors.yellow,
                  //     image: DecorationImage(
                  //       image: NetworkImage("https://itying.com/images/flutter/2.png"),
                  //       fit: BoxFit.cover
                  //     )
                  //   ),
                  // ),
                  child: UserAccountsDrawerHeader(
                    accountName: Text("大地老师"),
                    accountEmail: Text("dadi@itying.com"),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://itying.com/images/flutter/3.png"),
                    ),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://itying.com/images/flutter/2.png"),
                            fit: BoxFit.cover)),
                    otherAccountsPictures: <Widget>[
                      Image.network("https://itying.com/images/flutter/4.png"),
                      Image.network("https://itying.com/images/flutter/6.png"),
                    ],
                  ),
                )
              ],
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.home),
              ),
              title: Text("我的空间"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed("/userSpace");
              },
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.people),
              ),
              title: Text("用户中心"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed("/user");
              },
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.settings),
              ),
              title: Text("设置中心"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed("/setting");
              },
            ),
            Divider(),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: Text("右侧侧边栏"),
      ),
    );
  }
}
