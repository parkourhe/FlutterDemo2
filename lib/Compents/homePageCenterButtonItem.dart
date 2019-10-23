import 'package:flutter/material.dart';

class HomeBttonItem extends StatelessWidget{
  String tilte;
  String url;
  HomeBttonItem(this.url,this.tilte);

  

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

      return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Ink(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                            color: Colors.red, shape: BoxShape.circle),
                        child: InkWell(
                          child: Image.asset('$url'),
                          onTap: () {},
                        ),
                      ),
                      Text('$tilte')
                    ],
                    
                  );

    

    
  }
  
}