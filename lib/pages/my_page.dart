import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Swiper(
              loop: false,
              itemCount: 3,
              index: 0,
              viewportFraction: 0.75,
                  scale: 0.8,
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
       
    );
  }
}