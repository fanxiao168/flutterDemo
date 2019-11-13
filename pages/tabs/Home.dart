import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text("跳转到搜索页面"),
          onPressed: (){
            //路由跳转
            Navigator.pushNamed(context, "/search",arguments: {
              "id":123
            });
          },
          color: Theme.of(context).accentColor,
          textTheme: ButtonTextTheme.primary,
        ),
        SizedBox(height: 20), 
        RaisedButton(
          child: Text("跳转到产品页面"),
          onPressed: (){
            //路由跳转
            Navigator.pushNamed(context, "/product");
          },
        ),
        SizedBox(height: 20), 
        RaisedButton(
          child: Text("跳转到AppBarDemo页面"),
          onPressed: (){
            //路由跳转
            Navigator.pushNamed(context, "/appBarDemo");
          },
        ),
        SizedBox(height: 20), 
        RaisedButton(
          child: Text("跳转到TabBarControllerPage页面"),
          onPressed: (){
            //路由跳转
            Navigator.pushNamed(context, "/tabBarController");
          },
        ),
        SizedBox(height: 20), 
        RaisedButton(
          child: Text("跳转到按钮演示页面"),
          onPressed: (){
            //路由跳转
            Navigator.pushNamed(context, "/buttonDemo");
          },
        ),
        
      ],
    );
  }
}
