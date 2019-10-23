import 'package:flutter/material.dart';

class InComeButton1 extends StatefulWidget {

  final String title;
  final String peples;

  InComeButton1({this.title,this.peples});

  @override
  _InComeButton1 createState() => _InComeButton1();
}

class _InComeButton1 extends State<InComeButton1> {
  _InComeButton1();


@override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('123');

  }
  
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();

    print('456');
  }

  @override
  Widget build(BuildContext context) {



    // TODO: implement build
    return Container(
      width: 90.0,
      height: 65.0,
      
      // 手势处理
      child: GestureDetector(
        child: Column(
          mainAxisAlignment : MainAxisAlignment.center,
          children: <Widget>[
            Text('${widget.title}',style: TextStyle(color: Colors.white),),
            Text('${widget.peples}'+'人',style: TextStyle(color: Colors.white),),
          ],
        ),
        onTap: (){
          print('${widget.title}');
        },
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.red, Colors.blue]
        ),
        
        borderRadius: BorderRadius.circular((10.0))
      ),
      
      
    );
  }
}


