import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'NavigationBar/index_page.dart';

import 'pages/cart_page.dart';
import 'pages/share_page.dart';


void main() {
  runApp(Myapp());
  if (Platform.isAndroid) {
    SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  } 
}

class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: '鑫琏卡',
      // home: Scaffold(
        
      //   body: IndexPges(),
      // ),
    routes: <String,WidgetBuilder>{
      '/':(_)=> LoginPage(),
      'router/index' : (_)=>IndexPges()
    },
    );

  }

  

}