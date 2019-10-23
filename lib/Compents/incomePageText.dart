import 'package:flutter/material.dart';

class IncomeText extends StatefulWidget {
  
  final String title;
  final double size;
  var  color;

  IncomeText({this.title,this.size,this.color});

  @override
  _IncomeTextState createState() => _IncomeTextState();
}

class _IncomeTextState extends State<IncomeText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      '${widget.title}',
      style: TextStyle(fontSize: widget.size, color: widget.color),
    );
  }
}
