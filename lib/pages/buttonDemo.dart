import 'package:flutter/material.dart';

class ButtonDemoPage extends StatelessWidget {
  const ButtonDemoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("按钮演示页面"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: (){
              print("settings");
            },
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add,color: Colors.black,size: 40,),
        onPressed: (){
          print("FloatingActionButton");
        },
        backgroundColor: Colors.yellow,

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text("普通按钮"),
                onPressed: (){
                  print("普通按钮");
                },
              ),
              SizedBox(width: 5),
              RaisedButton(
                child: Text("颜色按钮"),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: (){
                  print("有颜色按钮");
                },
              ),
              SizedBox(width: 5),
              RaisedButton(
                child: Text("有阴影按钮"),
                color: Colors.blue,
                textColor: Colors.white,
                elevation: 20,
                onPressed: (){
                  print("有阴影按钮");
                },
              ),
              SizedBox(width: 5),
              RaisedButton.icon(
                icon: Icon(Icons.search),
                label: Text("图标按钮"),
                color: Colors.blue,
                textColor: Colors.white,
                // onPressed: null,
                onPressed: (){
                  print("图标按钮");
                },
              )
            ],
          ),
          SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 50,
                width: 400,
                child: RaisedButton(
                  child: Text("宽度高度"),
                  color: Colors.blue,
                  textColor: Colors.white,
                  elevation: 20,
                  onPressed: (){
                    print("宽度高度");
                  },
                ),
              )
            ],
          ),

          SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 60,
                  margin: EdgeInsets.all(10),
                  child: RaisedButton(
                    child: Text("自适应按钮"),
                    color: Colors.blue,
                    textColor: Colors.white,
                    elevation: 5,
                    onPressed: (){
                      print("自适应按钮");
                    },
                  ),
                ),
              )
            ],
          ),

          SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text("圆角按钮"),
                color: Colors.blue,
                textColor: Colors.white,
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                onPressed: (){
                  print("圆角按钮");
                },
              ),

              Container(
                height: 80,
                child: RaisedButton(
                  child: Text("原形按钮"),
                  color: Colors.blue,
                  textColor: Colors.white,
                  splashColor: Colors.red,
                  shape: CircleBorder(side: BorderSide(color: Colors.white)),
                  onPressed: (){
                    print("原形按钮");
                  },
                ),
              ),

              FlatButton(
                child: Text("按钮"),
                color: Colors.blue,
                textColor: Colors.yellow,
                onPressed: (){
                  print("FlatButton");
                },
              ),

              SizedBox(width: 10),

              OutlineButton(
                child: Text("按钮"),
                color: Colors.red, //没有效果
                // textColor: Colors.yellow, 
                onPressed: (){
                  print("OutlineButton");
                },
              )
              
            ],
          ),

          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(20),
                  height: 50,
                  child: OutlineButton(child: Text("注册"),onPressed: (){},),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ButtonBar(
                children: <Widget>[
                  RaisedButton(
                    child: Text("登陆"),
                    color: Colors.blue,
                    textColor: Colors.white,
                    elevation: 20,
                    onPressed: (){
                      print("登陆");
                    },
                  ),
                  RaisedButton(
                    child: Text("注册"),
                    color: Colors.blue,
                    textColor: Colors.white,
                    elevation: 20,
                    onPressed: (){
                      print("注册");
                    },
                  ),

                  MyButton(text: "自定义按钮",height: 60.0,width: 100,pressed: (){
                    print("自定义按钮");
                  }),

                ],
              )
            ],
          )


        ],
      ),
    );
  }
}


// //自定义按钮组件
// class MyButton extends StatelessWidget{
//   final text;
//   final pressed;
//   final double width;
//   final double height;
//   const MyButton({})
// }

class MyButton extends StatelessWidget {

  final text;
  final pressed;
  final double width;
  final double height;

  const MyButton({this.text='',this.pressed=null,this.width=80,this.height=30});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      width: this.width,
      child: RaisedButton(
        child: Text(this.text),
        onPressed: this.pressed,
      ),
    );
  }
}