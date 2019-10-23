import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../pages/home_page.dart';
import  '../pages/income_page.dart';
import '../pages/my_page.dart';
import '../pages/share_page.dart';

class IndexPges extends StatefulWidget {
  @override
  _IndexPgesState createState() => _IndexPgesState();
}

class _IndexPgesState extends State<IndexPges> {

  final List<BottomNavigationBarItem> bttomTabs = [

    BottomNavigationBarItem(
        icon:Icon(CupertinoIcons.home),
        title: Text(
          '首页'
        )
    ),
     BottomNavigationBarItem(
        icon:Icon(CupertinoIcons.search),
        title: Text(
          '收益'
        )
    ),
     BottomNavigationBarItem(
        icon:Icon(CupertinoIcons.shopping_cart),
        title: Text(
          '分享'
        )
    ),
     BottomNavigationBarItem(
        icon:Icon(CupertinoIcons.profile_circled),
        title: Text(
          '我的'
        )
    )
    
  ];

   List<Widget> tabBodies = [
    HomePage(),
    Income(),
    MyPage(),
    // SharePage()
    LoginPage()
  ];
    
  int currentIndex = 0 ;
  // 定义当前页面
  Widget currentPage;

// 生命周期初始化，默认哪一个页面
  @override
  void initState() {
    // 默认第一个页面
    currentPage = tabBodies[currentIndex];
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 245, 245, 1.0),
      // 导航栏框架
      bottomNavigationBar: BottomNavigationBar(
        // 底部文字固定
         type: BottomNavigationBarType.fixed,  
         currentIndex: currentIndex,
         items: bttomTabs,
         onTap: (index){
          setState(() {
              currentIndex = index;
              currentPage = tabBodies[currentIndex]; 
          });
         },
      ),
      body: currentPage,
    );
  }
}