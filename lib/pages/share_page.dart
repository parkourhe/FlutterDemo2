// import 'package:flutter/material.dart';


// class SharePage extends StatefulWidget {
//   @override
//   _SharePageState createState() => _SharePageState();
// }

// class _SharePageState extends State<SharePage> {
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     _loginButtonController =  AnimationController(
//         duration: Duration(microseconds: 3000),
//         vsync: this
//     );
//   }
  

//   onTap(){
//     print('haha');
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
      
//       body: Container(
//         width: 320.0,
//         height: 60.0,
//         alignment: FractionalOffset.center,
//         decoration: BoxDecoration(
//           color: Color.fromRGBO(247, 64, 106, 1.0),
//           borderRadius: BorderRadius.all((Radius.circular(30.0)))
//         ),
//         child: Text(
//           "登录"
//         ,style:TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.w300,letterSpacing: 0.3)),

//       ),
       
//     );
//   }
// }

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:groovin_material_icons/groovin_material_icons.dart';
import 'dart:io';
import '../utils/api.dart';
import '../utils/md5.dart';
import 'dart:convert';
import '../utils/toast.dart';



class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String _phone, _password;
  bool _isObscure = true;
  Color _eyeColor;
  Dio dio = Dio();
  List _loginMethod = [
    {
      "title": "facebook",
      "icon": GroovinMaterialIcons.facebook,
    },
    {
      "title": "google",
      "icon": GroovinMaterialIcons.google,
    },
    {
      "title": "twitter",
      "icon": GroovinMaterialIcons.twitter,
    },
  ];
  
  void postHttp() async {
    

    Map result;
    // 设置请求头
    
    Options options = Options(
      // connectTimeout: 600000,
      // receiveTimeout: 600000,
      method: 'post',
      headers: {
        'token': null,
        'uid': null,
        'edition': '1.3.6',
        'platform': 'xinlianka',
        'model': 'android',
      }
    );

    Map data = {"tel": "$_phone","password":"$_password"};


    Map list = TransMd5.generateMd5(data);
    Map<String,String> sendData={};

    
    Response response;

    // Map test  = {"sign":"1290ef3418b097508d95e92d49d059b9","data":"{\"tel\":\"18190718818\",\"password\":\"2019rtxlk\"}"};


    list.forEach((k,v)=> sendData["$k"]="$v" );

    
    response = await dio.post('https://m.xliank.com/api/index/index?method=login',data:sendData,options:options);
    
   
    
    result = jsonDecode(response.data);

    if(result['code']!=200){
        
        Toast.show(result['msg']);

    }else{

        Navigator.pushNamed(context, 'router/index');
        
    }
    
   
}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
            key: _formKey,
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 22.0),
              children: <Widget>[
                SizedBox(
                  height: kToolbarHeight,
                ),
                buildTitle(),
                buildTitleLine(),
                SizedBox(height: 70.0),
                buildEmailTextField(),
                SizedBox(height: 30.0),
                buildPasswordTextField(context),
                buildForgetPasswordText(context),
                SizedBox(height: 60.0),
                buildLoginButton(context),
                SizedBox(height: 30.0),
                buildOtherLoginText(),
                buildOtherMethod(context),
                buildRegisterText(context),
              ],
            )));
  }

  Align buildRegisterText(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(top: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('没有账号？'),
            GestureDetector(
              child: Text(
                '点击注册',
                style: TextStyle(color: Colors.green),
              ),
              onTap: () {
                //TODO 跳转到注册页面
                print('去注册');
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  ButtonBar buildOtherMethod(BuildContext context) {
    return ButtonBar(
      alignment: MainAxisAlignment.center,
      children: _loginMethod
          .map((item) => Builder(
                builder: (context) {
                  return IconButton(
                      icon: Icon(item['icon'],
                          color: Theme.of(context).iconTheme.color),
                      onPressed: () {
                        //TODO : 第三方登录方法
                        Scaffold.of(context).showSnackBar(new SnackBar(
                          content: new Text("${item['title']}登录"),
                          action: new SnackBarAction(
                            label: "取消",
                            onPressed: () {},
                          ),
                        ));
                      });
                },
              ))
          .toList(),
    );
  }

  Align buildOtherLoginText() {
    return Align(
        alignment: Alignment.center,
        child: Text(
          '其他账号登录',
          style: TextStyle(color: Colors.grey, fontSize: 14.0),
        ));
  }

  Align buildLoginButton(BuildContext context) {
    return Align(
      child: SizedBox(
        height: 45.0,
        width: 270.0,
        child: RaisedButton(
          child: Text(
            'Login',
            style: Theme.of(context).primaryTextTheme.headline,
          ),
          color: Colors.black,
          onPressed: () {
            if (_formKey.currentState.validate()) {
             
              ///只有输入的内容符合要求通过才会到达此处
              _formKey.currentState.save();
              //TODO 执行登录方法
              print('email:$_phone , assword:$_password');
              postHttp();
              
              
            }
          },
          shape: StadiumBorder(side: BorderSide()),
        ),
      ),
    );
  }

  Padding buildForgetPasswordText(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Align(
        alignment: Alignment.centerRight,
        child: FlatButton(
          child: Text(
            '忘记密码？',
            style: TextStyle(fontSize: 14.0, color: Colors.grey),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }

  TextFormField buildPasswordTextField(BuildContext context) {
    return TextFormField(
      onSaved: (String value) => _password = value,
      obscureText: _isObscure,
      validator: (String value) {
        if (value.isEmpty) {
          return '请输入密码';
        }
      },
      decoration: InputDecoration(
          labelText: 'Password',
          suffixIcon: IconButton(
              icon: Icon(
                Icons.remove_red_eye,
                color: _eyeColor,
              ),
              onPressed: () {
                setState(() {
                  _isObscure = !_isObscure;
                  _eyeColor = _isObscure
                      ? Colors.grey
                      : Theme.of(context).iconTheme.color;
                });
              })),
    );
  }

  TextFormField buildEmailTextField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'phone Address',
      ),
      validator: (String value) {
        var emailReg = RegExp(
            r'^((13[0-9])|(14[0-9])|(15[0-9])|(16[0-9])|(17[0-9])|(18[0-9])|(19[0-9]))\d{8}$');
        if (!emailReg.hasMatch(value)) {
          return '请输入正确的手机号码';
        }
      },
      onSaved: (String value) => _phone = value,
    );
  }

  Padding buildTitleLine() {
    return Padding(
      padding: EdgeInsets.only(left: 12.0, top: 4.0),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Container(
          color: Colors.black,
          width: 40.0,
          height: 2.0,
        ),
      ),
    );
  }

  Padding buildTitle() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Login',
        style: TextStyle(fontSize: 42.0),
      ),
    );
  }
}
