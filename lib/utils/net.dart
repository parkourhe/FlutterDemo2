// import 'dart:io';
// import 'dart:async';
// import 'dart:convert';
// import 'package:dio/dio.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:package_info/package_info.dart';

// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// import '../utils/utils.dart';
// import '../pages/pages.dart';


// typedef DynamicVoidCallback = void Function(dynamic);

// class Net {
//   static const String _baseUrl = "https://m.xliank.com";
//   // static const String _baseUrl = "http://10.168.10.180:80";

//   static String getModelInfo() {
//     if (Platform.isAndroid) {
//       return 'android';
//     } else if(Platform.isIOS) {
//       return 'ios';
//     } else {
//       return 'web';
//     }
//   }

//   static Future<void> http(
//     String url, 
//     BuildContext context, 
//     { String method = 'post', 
//       dynamic data, 
//       DynamicVoidCallback success, 
//       DynamicVoidCallback error, 
//       VoidCallback finish,
//       bool isShowLoading,
//       bool isFormData = false,
//       Map<String, String> otherForData,
//     }) async {

//     String plaform = getModelInfo();
//     SharedPreferences local = await SharedPreferences.getInstance();
//     PackageInfo packageInfo = await PackageInfo.fromPlatform();
//     Dio dio = new Dio();
//     dio.options.baseUrl = _baseUrl;
//     Map<String, dynamic> md5Data = TransMd5.generateMd5(data);
//     Response response;
//     dynamic params;

//     Options options = Options(
//       connectTimeout: 600000,
//       receiveTimeout: 600000,
//       method: method,
//       headers: {
//         'token': local.getString('token'),
//         'uid': local.getString('uid'),
//         'edition': '${packageInfo.version}',
//         'platform': 'xinlianka',
//         'model': '$plaform',
//       }
//     );
//     // 请求数据
//     if (isFormData) {
//       otherForData.forEach((k, v) {
//         if(v?.isNotEmpty ?? false) {
//           md5Data[k] = UploadFileInfo(File(v), "$k.jpg");
//         }
//       });
//       params = new FormData.from(md5Data);
//     } else {
//       params = md5Data;
//     }
//     print(params);

//     if (isShowLoading) {
//       response = await showDialog(context: context,barrierDismissible: false, builder: (context) {
//         return Dialog(
//           backgroundColor: Color(0xbbffffff),
//           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//           child: SizedBox(
//             width: 10,
//             height: 70,
//             child: ShowLoading(dio.request(url, data: params, options: options),),
//           ),
//         );
//       });
//     } else {
//       try {
//         response = await dio.request(url, data: params, options: options);
//       } on DioError catch(e) {
//         if (e?.type == DioErrorType.CONNECT_TIMEOUT) {
//           Toast.show('无法链接网络，请检查您的网络设置');
//         } else {
//           print(e?.message);
//         }
//         return;
//       }
//     }

//     if(response == null) { Toast.show('请求出错！'); return; }
//     print(response.toString());
//     if(response?.data == '') { Toast.show('您的网络请求出错了'); return; }
//     if (finish != null) { finish(); }

//     if (response != null ) {
//       int code = response.statusCode;
//       var res = jsonDecode(response.data);
//       if (code == 200) {
//         if ("${res['code']}" == "200") {
//           /// 成功处理
//           success(res);
//         } else {
//           /// 错误处理
//           if (error == null) {
//             _errorHandle(res: res,ctx: context);
//             return;
//           } else {
//             error(res);
//           } 
//         }
//       }  else if (code == 404) {
//         Toast.show('你获取的数据离家出走');
//       } else {
//         Toast.show('您的网络开小差了');
//       }
//     }
  
//   }
//   static dynamic httpPost(
//     String url, BuildContext context, {
//       dynamic data, 
//       @required  DynamicVoidCallback success, 
//       DynamicVoidCallback error, 
//       VoidCallback finish,
//       bool isShowLoading = false,
//       bool isFormData = false,
//       dynamic otherForData,
//     }) async {

//     return await http(
//       url, context, 
//       data: data, 
//       success: success, 
//       error: error, 
//       finish: finish, 
//       isShowLoading:isShowLoading,
//       isFormData: isFormData,
//       otherForData: otherForData,
//     );
//   }

//   static dynamic httpGet(
//     String url, BuildContext context, {
//       dynamic data, 
//       @required DynamicVoidCallback success, 
//       DynamicVoidCallback error, 
//       VoidCallback finish,
//     }) async {

//     return await http(
//       url, context, 
//       method: 'GET', 
//       data: data,
//       isShowLoading: false,
//       success: success, 
//       error: error, 
//       finish: finish
//     );
//   }
// }

// void _errorHandle({ @required dynamic res, @required BuildContext ctx }) {
//   switch ("${res["code"]}") {
//     case "100":
//     case "111":
//       Toast.show(res['msg']);
//       Navigator.push(
//         ctx, 
//         new MaterialPageRoute(
//           builder: (BuildContext context) {
//             return LoginPage();
//           }
//         )
//       );
//       break;
//     case "113":
//       if(!(res['data'] is Map)) {
//         return;
//       }
//       if("${res['data']['is_remind']}" == "1") {
//         List temp = res['data']['str'];
//         showCupertinoDialog(context: ctx,
//           builder: (ctx) {
//             return CupertinoAlertDialog(
//               title: Padding(
//                 padding: EdgeInsets.only(bottom: 10),
//                 child: Text('${res['data']['title']}',textScaleFactor: 1.0,),
//               ),
//               content: Column(
//                 children: temp.map((i) {
//                   return Text('$i', style: CustomTheme.black14Font,textScaleFactor: 1.0,);
//                 }).toList(),
//               ),
//               actions: <Widget>[
//                 FlatButton(
//                   color: CustomTheme.xlkMainColor,
//                   padding: EdgeInsets.symmetric(vertical: 15),
//                   onPressed: () => Navigator.pop(ctx),
//                   child: Text('我知道了', style: CustomTheme.write14Font,textScaleFactor: 1.0,),
//                 )
//               ],
//             );
//           }
//         );
//       }
//       break;
//     default:
//       Toast.show("${res["msg"]}");
//   }
// }



// class ShowLoading extends StatefulWidget {
//   ShowLoading(this.responseCallback,);
//   final Future<Response> responseCallback;

//   @override
//   _ShowLoadingState createState() => _ShowLoadingState();
// }

// class _ShowLoadingState extends State<ShowLoading> {

//   void getData() async {
//     await widget.responseCallback.then((res) {
//       Navigator.pop(context, res);
//     }).catchError((err) {
//       if(context != null) {
//         if(Navigator.canPop(context)) {
//           Navigator.pop(context, null);
//         }
//       }
//     });
//   }

//   @override
//   void initState() {
//     super.initState();
//     getData();
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     CancelToken token = new CancelToken();
//     token.cancel();
//   }

//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//     context.inheritFromWidgetOfExactType(Type);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: <Widget>[
//           SpinKitWave(color: CustomTheme.xlkMainColor,size: 30,),
//           Text('加载中...' , style: CustomTheme.black15Font,textScaleFactor: 1.0,)
//         ],
//       )
//     );
//   }
// }
