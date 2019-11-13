import 'package:flutter/material.dart';

/*
  TabController 实现tab切换,
  1.需要定义一个有状态的组件
  2.继承SingleTickerProviderStateMixin
  3.实现initState,初始化_tabController
  4.TabBar和TabBarView中要配置 this._tabController
通过 
*/
class TabBarControllerPage extends StatefulWidget {
  TabBarControllerPage({Key key}) : super(key: key);

  @override
  _TabBarControllerPageState createState() => _TabBarControllerPageState();
}

class _TabBarControllerPageState extends State<TabBarControllerPage> with SingleTickerProviderStateMixin{
  
  TabController _tabController;

  @override
  void dispose() { //生命周期函数
    super.dispose();
    _tabController.dispose();
  }
  void initState(){ //生命周期函数
    super.initState();
    _tabController = new TabController(
      vsync: this,
      length: 2
    );
    _tabController.addListener((){
      print(_tabController.index);
      setState(() {
        //TODO处理相关的事件
      });
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text("TabBarControllerPage"),
         bottom: TabBar(
           controller: this._tabController, //注意
           tabs: <Widget>[
             Tab(text: "热销"),
             Tab(text: "推荐")
           ],
         ),
       ),
       body: TabBarView(
         controller: this._tabController, //注意
         children: <Widget>[
           Center(child: Text("热销")),
           Center(child: Text("推荐"))
         ],
       ),
    );
  }
}