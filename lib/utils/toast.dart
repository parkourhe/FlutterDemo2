import 'package:flutter/material.dart';
import 'dart:async';
import 'package:fluttertoast/fluttertoast.dart' as flutterToast;
import '../Compents/loading.dart';



class Toast {
  static OverlayEntry _overlayEntry; //toast靠它加到屏幕上
  static bool _showing = false; //toast是否正在showing
  static DateTime _startedTime; //开启一个新toast的当前时间，用于对比是否已经展示了足够时间
  
  static void show(
    String msg,
  ) {
    flutterToast.Fluttertoast.showToast(
      msg: "$msg",
      toastLength: flutterToast.Toast.LENGTH_SHORT,
      gravity: flutterToast.ToastGravity.CENTER,
      timeInSecForIos: 5,
      backgroundColor: Color(0x99000000),
      textColor: Color(0xffffffff),
      fontSize: 13.0
    );
  }
  

  static void loadingToast(
    BuildContext context,
  ) async {
    OverlayState overlayState = Overlay.of(context);
    
    _showing = true;
    if (_overlayEntry == null) {
      _overlayEntry = OverlayEntry(
          builder: (BuildContext context) => Positioned(
            //top值，可以改变这个值来改变toast在屏幕中的位置
            top: MediaQuery.of(context).size.height * 1 / 2,
            child: Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 80.0),
                child: AnimatedOpacity(
                  opacity: _showing ? 1.0 : 0.0, //目标透明度
                  duration: _showing
                    ? Duration(milliseconds: 100)
                    : Duration(milliseconds: 400),
                  child: LoadingWidget(size: 20,),
                ),
              )),
          ));
      overlayState.insert(_overlayEntry);
    } else {
      //重新绘制UI，类似setState
      _overlayEntry.markNeedsBuild();
    }
    await Future.delayed(Duration(milliseconds: 2000)); //等待两秒
    //2秒后 消失
    if (DateTime.now().difference(_startedTime).inMilliseconds >= 2000) {
      _showing = false;
      _overlayEntry.markNeedsBuild();
    }
  }
}

// class LoadingToast {
//   LoadingToast({@required this.context});
//   final BuildContext context;
//   OverlayState overlayState = Overlay.of(context);

//   static void show(
//     BuildContext context,
//   ) async {
//     OverlayState overlayState = Overlay.of(context);
    
//     _showing = true;
//     if (_overlayEntry == null) {
//       _overlayEntry = OverlayEntry(
//           builder: (BuildContext context) => Positioned(
//             //top值，可以改变这个值来改变toast在屏幕中的位置
//             top: MediaQuery.of(context).size.height * 1 / 2,
//             child: Container(
//               alignment: Alignment.center,
//               width: MediaQuery.of(context).size.width,
//               child: Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 80.0),
//                 child: AnimatedOpacity(
//                   opacity: _showing ? 1.0 : 0.0, //目标透明度
//                   duration: _showing
//                     ? Duration(milliseconds: 100)
//                     : Duration(milliseconds: 400),
//                   child: LoadingWidget(size: 20,),
//                 ),
//               )),
//           ));
//       overlayState.insert(_overlayEntry);
//     } else {
//       //重新绘制UI，类似setState
//       _overlayEntry.markNeedsBuild();
//     }
//     await Future.delayed(Duration(milliseconds: 2000)); //等待两秒
//     //2秒后 消失
//     if (DateTime.now().difference(_startedTime).inMilliseconds >= 2000) {
//       _showing = false;
//       _overlayEntry.markNeedsBuild();
//     }
//   }

// }