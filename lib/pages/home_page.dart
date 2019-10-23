import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import '../Compents/homePageCenterButtonItem.dart';
import '../models/movie.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    getHttp();

    return Scaffold(
        body: Stack(
      children: <Widget>[
        Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Stack(
                  overflow: Overflow.visible,
                  alignment: FractionalOffset(0.5, 1.1),
                  children: <Widget>[
                    Container(
                      child: Image.asset(
                        'assets/images/home/home-top.png',
                        fit: BoxFit.cover,
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: 250.0,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        width: 330.0,
                        height: 42.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular((20.0)),
                          shape: BoxShape.rectangle,
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.7),
                              offset: Offset(0.1, 0.1),
                            )
                          ],
                        ),
                        child: Text('a哈哈'))
                  ],
                ),
                
              ],
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  HomeBttonItem('assets/images/home/还款.png','还款'),
                  HomeBttonItem('assets/images/home/云刷.png','云刷'),
                  HomeBttonItem('assets/images/home/升级.png','升级'),
                  
                ],
              ),
              margin: EdgeInsets.fromLTRB(0, 22, 0, 0),
              width: MediaQuery.of(context).size.width,
              height: 130.0,
              decoration: BoxDecoration(color: Colors.white),
            ),
            
            
            Container(
              child: Image.asset('assets/images/home/home-banner-test.png'),
              width: MediaQuery.of(context).size.width,
              
              decoration: BoxDecoration(color: Colors.red),
            )
          ],
        ),
        
      ],
    ));
  }
}

// get请求
// void getHttp() async {
//   try {
//     Response response;
//     response = await Dio().get(
//       "http://39.97.33.178/api/movieOnInfoList?cityId=10",
//       //  queryParameters:data
//     );
//     return print(response);
//   } catch (e) {
//     return print(e);
//   }
// }

// get请求
void getHttp() async {
  try {
    Response response;
    response = await Dio().get(
      "http://39.97.33.178/api/movieOnInfoList?cityId=10",
      //  queryParameters:data
    );


    MovieList movie = MovieList.fromJson(response.data);

    print(response.data);
  //   String name = movie['data']

  // return print(movie.);
    
  
  } catch (e) {
    return print('错误');
  }
}

