


import 'package:flutter/material.dart';


class InComepageCrad extends StatefulWidget {

  InComepageCrad(this.title);

  final String title;

  @override
  _InComepageCradState createState() => _InComepageCradState();
}

class _InComepageCradState extends State<InComepageCrad> {
  @override
  Widget build(BuildContext context) {
    return Container(
            
            width: MediaQuery.of(context).size.width,
            height: 60.0,
            child: Card(
              
              child: Row(
                // 弹性两边布局
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: <Widget>[
                  Padding(
                    child: Text('${widget.title}'),
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  ),
                  Padding(
                    child: Icon(Icons.arrow_forward_ios),
                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                  )
                  // Align(

                  //   alignment: Alignment.bottomCenter,
                  //   child: Text('haha'),
                  // )
                  // Text('haha'),
                ],
              ),
            ),
          );
  }
}