import 'package:flutter/material.dart';

/*
图片组件是显示图像的组件，Image 组件有很多构造函数，这里我们只给大家讲两个
Image.asset， 本地图片
Image.network 远程图片

Image 组件的常用属性: 
名称                        类型                                                  说明
alignment                Alignment                                          图片的对齐方式
color 和 colorBlendMode                                                     设置图片的背景颜色，通常和 colorBlendMode 配合一起 使用，这样可以是图片颜色和背景色混合。上面的图片就 是进行了颜色的混合，绿色背景和图片红色的混合
fit                       BoxFit
fit 属性用来控制图片的拉伸和挤压，这都是根据父容器来 的。 BoxFit.fill:全图显示，图片会被拉伸，并充满父容器。
BoxFit.contain:全图显示，显示原比例，可能会有空隙。
BoxFit.cover:显示可能拉伸，可能裁切，充满(图片要 充满整个容器，还不变形)。
 湖北众猿腾网络科技有限公司
BoxFit.fitWidth:宽度充满(横向充满)，显示可能拉伸， 可能裁切。
BoxFit.fitHeight :高度充满(竖向充满),显示可能拉 伸，可能裁切。
BoxFit.scaleDown:效果和 contain 差不多，但是此属 性不允许显示超过源图片大小，可小不可大。

repeat                平铺
ImageRepeat.repeat : 横向和纵向都进行重复，直到铺满整 个画布。
ImageRepeat.repeatX: 横向重复，纵向不重复。
ImageRepeat.repeatY:纵向重复，横向不重复。

width                                                 宽度 一般结合 ClipOval 才能看到效果
height                                                高度 一般结合 ClipOval 才能看到效果
*/

void main(){
  
    runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('flutter demo'),
        ),
        body: HomeContent(),
        ),
    );   
  }
}


class HomeContent extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    return Center(
      child:Container(
        child: Image.asset("images/a.jpeg",
        fit: BoxFit.cover,
      ),
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.yellow
      ),
    ),
    );
  }
}