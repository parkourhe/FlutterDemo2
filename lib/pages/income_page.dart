import 'package:flutter/material.dart';
import '../Compents/incomePageButtonItem.dart';
import '../Compents/incomePageText.dart';
import '../Compents/incomePageCard.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Income extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Income();
}

class _Income extends State<StatefulWidget> with AutomaticKeepAliveClientMixin {
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
  
  @override
  Widget build(BuildContext context) {
    // 等级
    String leval = "团长";

    // vip数量

    var vip_count = 10;
    var vip_count2 = 3;

    // TODO: implement build
    return Scaffold(
      backgroundColor: Color.fromRGBO(230, 230, 250, 1),
      appBar: AppBar(
        title: Center(
          child: Text('收益'),
        ),
      ),
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                color: Color.fromRGBO(230, 230, 250, 1),
                child: Image.asset(
                    'assets/images/income/income_center_bg_img.png'),
                width: MediaQuery.of(context).size.width,
              ),
              Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 25.0, 0, 10.0),
                    child: Center(
                      child: Text(
                        '余额',
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      '13.16',
                      style: TextStyle(color: Colors.white, fontSize: 35.0),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 50.0),
                    width: 80.0,
                    height: 25.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular((10.0))),
                    child: Center(
                      child: Text(
                        '提现',
                        style: TextStyle(color: Colors.yellow),
                      ),
                    ),
                  ),
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: <Widget>[
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            InComeButton1(
                              title: '待激活明细',
                              peples: '10',
                            ),
                            InComeButton1(
                              title: '消费过用户',
                              peples: '20',
                            ),
                            InComeButton1(
                              title: '今日新增用户',
                              peples: '20',
                            ),
                          ],
                        ),
                        width: 351.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular((10.0))),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
          Container(
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 15.0, 0),
                  child: Align(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text('等衔:'),
                      Text(
                        '$leval',
                        style: TextStyle(
                            color: Color.fromRGBO(255, 96, 0, 1),
                            fontSize: 16.0),
                      )
                    ],
                  )),
                ),
                Container(child: Image.asset('assets/images/income/task.png')),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 5.0),
                  child: Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IncomeText(
                        title: '累计邀请有效用户15人VIP',
                        size: 12.0,
                        color: Colors.grey,
                      ),
                      IncomeText(
                        title: '${vip_count.toString()}',
                        size: 12.0,
                        color: Color.fromRGBO(255, 96, 0, 1),
                      ),
                      IncomeText(
                        title: '累计获得鑫琏卡',
                        size: 12.0,
                        color: Colors.grey,
                      ),
                      IncomeText(
                        title: '${vip_count2.toString()}',
                        size: 12.0,
                        color: Color.fromRGBO(255, 96, 0, 1),
                      ),
                      IncomeText(
                        title: '张',
                        size: 12.0,
                        color: Colors.grey,
                      ),
                    ],
                  )),
                ),
              ],
            ),
            margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
            width: 351.0,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular((10.0))),
          ),
          InComepageCrad('未消费用户'),
          InComepageCrad('已消费用户'),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
            child: Swiper(
              loop: false,
              itemCount: 3,
              index: 0,
              viewportFraction: 0.5,
                  scale: 0.7,
                  itemBuilder: (context, index) {
                    return  Image.asset('assets/images/card/add_credit_3.png') ;
                  },
            //  itemBuilder:(BuildContext context,int index){
            //         return  Image.asset('assets/images/card/add_credit_3.png');
            //   },

            //   itemCount: 3,
            //   pagination: new SwiperPagination(),
            //   control: new SwiperControl(),
 
          ),
          ),
          )
          
          
        ],
        
      ),
    );
  }
}
