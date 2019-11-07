import 'package:flutter/material.dart';

import '../pages/Tabs.dart';
import '../pages/Form.dart';
import '../pages/Search.dart';
import '../pages/Product.dart';
import '../pages/ProductInfo.dart';

//配置路由
final routes = {
    "/":(context,{arguments})=>Tabs(),
    "/form":(context,{arguments})=>FormPage(arguments:arguments),
    "/product":(context,{arguments})=>ProductPage(),
    "/productinfo":(context,{arguments})=>ProductInfoPage(arguments: arguments),
    "/search":(context,{arguments})=>SearchPage(arguments:arguments),
};

//固定写法
  var onGenerateRoute = (RouteSettings settings){
        //统一处理
        final String name = settings.name;
        final Function pageContentBuilder = routes[name];
        if(pageContentBuilder != null) {
          print(name);
          if(settings.arguments != null){
            final Route route = MaterialPageRoute(
              builder: (context)=>pageContentBuilder(context,arguments:settings.arguments));
              return route;
          }else{
            final Route route = MaterialPageRoute(
              builder: (context) => pageContentBuilder(context));
            return route;
          }
        }else{
          return null;
        }
  };