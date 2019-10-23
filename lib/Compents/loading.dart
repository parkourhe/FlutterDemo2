import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/toast.dart';
import '../utils/utils.dart';

class LoadingWidget extends StatelessWidget {
  final double size;
  final EdgeInsetsGeometry padding;
  LoadingWidget({this.size = 30.0, this.padding});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding??EdgeInsets.only(top: ScreenUtil.getInstance().setWidth(50)),
      child: new Center(
        child: SpinKitWave(color: CustomTheme.xlkMainColor,size: size,),
      ),
    );
  }
}