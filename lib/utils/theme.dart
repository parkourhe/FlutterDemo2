import 'dart:io';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

String getFontFamily() {
  if (Platform.isAndroid) {
    return 'xmlt';
  } else {
    return 'PingFang-SC-Regular';
  }
}

class CustomTheme {
  static final String fontFamily = getFontFamily();
  // 主题色
  // static const Color xlkMainColor = Color(0xFF4F9FFE); // 主题色
  static const Color xlkMainColor = Color(0xFF2282F4); // 主题色
  // static const Color xlkMainBgColor = Color(0xFFF7F7F7); // 主要背景色
  // static const Color xlkMainBgColor = Color(0xffededed); // 主要背景色
  static const Color xlkMainBgColor = Color(0xffededed); // 主要背景色
  static const Color xlkMainBgColor2 = Color(0xFF2282F4);
  static const Color xlkWriteColor = Color(0xFFFFFFFF); // 白色字体
  static const Color xlkBlackColor = Color(0xFF333333); // 主要字体色
  static const Color xlkGrayColor = Color(0xFFF7F7F7);
  static const Color xlkGrayColor1 = Color(0xFFB5B5B5);
  static const Color xlkGrayColor1_8 = Color(0xFF888888);
  static const Color xlkGrayColor2 = Color(0xFF999999);
  static const Color xlkGrayColor3 = Color(0xFFCCCCCC);
  static const Color xlkRedColor = Color(0xFFEE1010);
  static const Color xlkRedColor1 = Color(0xFFFF4E00);
  static const Color xlkOrangeColor = Color(0xFFF98100);
  static const Color xlkOrangeColor2 = Color(0xFFF7CA5D);
  static const Color xlkOrangeColor1 = Color(0xFFFF6600);
  static const Color xlkBlueColor1 = Color(0xFF4FBAFE);
  static const Color xlkBlueColor2 = Color(0xFF4F9FFE);
  static const Color xlkGreenColor = Color(0xFF23B714);


  static TextStyle xlkWriteFont(double size, { FontWeight weight = FontWeight.w400 }) {
    return TextStyle(
      inherit: false,
      color: xlkWriteColor,
      fontSize: ScreenUtil().setWidth(size * 2),
      fontFamily: fontFamily,
      fontWeight: weight
    );
  }
  static TextStyle xlkBlackFont(double size, { FontWeight weight = FontWeight.w400 }) {
    return TextStyle(
      inherit: false,
      color: xlkBlackColor,
      fontSize: ScreenUtil().setWidth(size * 2),
      fontFamily: fontFamily,
      fontWeight: weight
    );
  }
  static TextStyle xlkMainFont(double size, { FontWeight weight = FontWeight.w400 }) {
    return TextStyle(
      inherit: false,
      color: xlkMainColor,
      fontSize: ScreenUtil().setWidth(size * 2),
      fontFamily: fontFamily,
      fontWeight: weight
    );
  }
  static TextStyle xlkGrayFont(double size, { FontWeight weight = FontWeight.w400 }) {
    return TextStyle(
      inherit: false,
      color: xlkGrayColor,
      fontSize: ScreenUtil().setWidth(size * 2),
      fontFamily: fontFamily,
      fontWeight: weight
    );
  }
  static TextStyle xlkGrayFont1_8(double size, { FontWeight weight = FontWeight.w400 }) {
    return TextStyle(
      inherit: false,
      color: xlkGrayColor1_8,
      fontSize: ScreenUtil().setWidth(size * 2),
      fontFamily: fontFamily,
      fontWeight: weight
    );
  }
  static TextStyle xlkGrayFont2(double size, { FontWeight weight = FontWeight.w400 }) {
    return TextStyle(
      inherit: false,
      color: xlkGrayColor2,
      fontSize: ScreenUtil().setWidth(size * 2),
      fontFamily: fontFamily,
      fontWeight: weight
    );
  }
  static TextStyle xlkRedFont(double size, { FontWeight weight = FontWeight.w400 }) {
    return TextStyle(
      inherit: false,
      color: xlkRedColor,
      fontSize: ScreenUtil().setWidth(size * 2),
      fontFamily: fontFamily,
      fontWeight: weight
    );
  }
  static TextStyle xlkRedFont1(double size, { FontWeight weight = FontWeight.w400 }) {
    return TextStyle(
      inherit: false,
      color: xlkRedColor1,
      fontSize: ScreenUtil().setWidth(size * 2),
      fontFamily: fontFamily,
      fontWeight: weight
    );
  }
  static TextStyle xlkOrangeFont(double size, { FontWeight weight = FontWeight.w400 }) {
    return TextStyle(
      inherit: false,
      color: xlkOrangeColor,
      fontSize: ScreenUtil().setWidth(size * 2),
      fontFamily: fontFamily,
      fontWeight: weight
    );
  }
  static TextStyle xlkOrangeFont2(double size, { FontWeight weight = FontWeight.w400 }) {
    return TextStyle(
      inherit: false,
      color: xlkOrangeColor2,
      fontSize: ScreenUtil().setWidth(size * 2),
      fontFamily: fontFamily,
      fontWeight: weight
    );
  }
  static TextStyle xlkGreenFont(double size, { FontWeight weight = FontWeight.w400 }) {
    return TextStyle(
      inherit: false,
      color: xlkGreenColor,
      fontSize: ScreenUtil().setWidth(size * 2),
      fontFamily: fontFamily,
      fontWeight: weight
    );
  }

  static TextStyle customNormalFont({ double size, Color color }) {
    return TextStyle(
      inherit: false,
      color: color,
      fontSize: ScreenUtil().setWidth(size * 2),
      fontFamily: fontFamily,
      fontWeight: FontWeight.w400
    );
  }

  static TextStyle appBarFontStyle = TextStyle(
    color: xlkWriteColor,
    fontSize: ScreenUtil(width: 750,height: 1334).setWidth(36),
    fontFamily: fontFamily,
    fontWeight: FontWeight.bold
  );

  

  // static TextStyle write8Font = xlkWriteFont(ScreenUtil(width: 750,height: 1334).setWidth(16),);
  // static TextStyle write9Font = xlkWriteFont(ScreenUtil(width: 750,height: 1334).setWidth(18),);
  // static TextStyle write10Font = xlkWriteFont(ScreenUtil(width: 750,height: 1334).setWidth(20),);
  // static TextStyle write11Font = xlkWriteFont(ScreenUtil(width: 750,height: 1334).setWidth(22),);
  // static TextStyle write12Font = xlkWriteFont(ScreenUtil(width: 750,height: 1334).setWidth(24),);
  // static TextStyle write13Font = xlkWriteFont(ScreenUtil(width: 750,height: 1334).setWidth(26),);
  // static TextStyle write14Font = xlkWriteFont(ScreenUtil(width: 750,height: 1334).setWidth(28),);
  // static TextStyle write15Font = xlkWriteFont(ScreenUtil(width: 750,height: 1334).setWidth(30),);
  // static TextStyle write16Font = xlkWriteFont(ScreenUtil(width: 750,height: 1334).setWidth(32),);
  // static TextStyle write17Font = xlkWriteFont(ScreenUtil(width: 750,height: 1334).setWidth(34),);
  // static TextStyle write18Font = xlkWriteFont(ScreenUtil(width: 750,height: 1334).setWidth(36),);
  // static TextStyle write19Font = xlkWriteFont(ScreenUtil(width: 750,height: 1334).setWidth(38),);
  // static TextStyle write20Font = xlkWriteFont(ScreenUtil(width: 750,height: 1334).setWidth(40),);
  // static TextStyle write22Font = xlkWriteFont(ScreenUtil(width: 750,height: 1334).setWidth(44),);
  // static TextStyle write25Font = xlkWriteFont(ScreenUtil(width: 750,height: 1334).setWidth(50),);
  // static TextStyle write35Font = xlkWriteFont(ScreenUtil(width: 750,height: 1334).setWidth(70),);

  static TextStyle write8Font = xlkWriteFont(8,);
  static TextStyle write10Font = xlkWriteFont(10,);
  static TextStyle write11Font = xlkWriteFont(11,);
  static TextStyle write12Font = xlkWriteFont(12,);
  static TextStyle write13Font = xlkWriteFont(13,);
  static TextStyle write14Font = xlkWriteFont(14,);
  static TextStyle write15Font = xlkWriteFont(15,);
  static TextStyle write16Font = xlkWriteFont(16,);
  static TextStyle write17Font = xlkWriteFont(17,);
  static TextStyle write18Font = xlkWriteFont(18,);
  static TextStyle write19Font = xlkWriteFont(19,);
  static TextStyle write20Font = xlkWriteFont(20,);
  static TextStyle write22Font = xlkWriteFont(22);
  static TextStyle write25Font = xlkWriteFont(25);
  static TextStyle write28Font = xlkWriteFont(28);
  static TextStyle write30Font = xlkWriteFont(30);
  static TextStyle write35Font = xlkWriteFont(35);


  static TextStyle black10Font = xlkBlackFont(10);
  static TextStyle black11Font = xlkBlackFont(11);
  static TextStyle black12Font = xlkBlackFont(12);
  static TextStyle black13Font = xlkBlackFont(13);
  static TextStyle black14Font = xlkBlackFont(14);
  static TextStyle black15Font = xlkBlackFont(15);
  static TextStyle black16Font = xlkBlackFont(16);
  static TextStyle black17Font = xlkBlackFont(17);
  static TextStyle black18Font = xlkBlackFont(18);
  static TextStyle black19Font = xlkBlackFont(19);
  static TextStyle black20Font = xlkBlackFont(20);
  static TextStyle black25Font = xlkBlackFont(25);


  static TextStyle main10Font = xlkMainFont(10);
  static TextStyle main11Font = xlkMainFont(11);
  static TextStyle main12Font = xlkMainFont(12);
  static TextStyle main13Font = xlkMainFont(13);
  static TextStyle main14Font = xlkMainFont(14);
  static TextStyle main15Font = xlkMainFont(15);
  static TextStyle main16Font = xlkMainFont(16);
  static TextStyle main17Font = xlkMainFont(17);
  static TextStyle main18Font = xlkMainFont(18);
  static TextStyle main19Font = xlkMainFont(19);
  static TextStyle main20Font = xlkMainFont(20);


  static TextStyle orange11Font = xlkOrangeFont(11,);
  static TextStyle orange12Font = xlkOrangeFont(12,);
  static TextStyle orange13Font = xlkOrangeFont(13,);
  static TextStyle orange14Font = xlkOrangeFont(14,);
  static TextStyle orange15Font = xlkOrangeFont(15,);
  static TextStyle orange17Font = xlkOrangeFont(17,);


  static TextStyle orange15Font2 = xlkOrangeFont2(15,);

  static TextStyle red10Font = xlkRedFont(10);
  static TextStyle red11Font = xlkRedFont(11);
  static TextStyle red12Font = xlkRedFont(12);
  static TextStyle red13Font = xlkRedFont(13);
  static TextStyle red14Font = xlkRedFont(14);
  static TextStyle red15Font = xlkRedFont(15);
  static TextStyle red16Font = xlkRedFont(16);
  static TextStyle red17Font = xlkRedFont(17);
  static TextStyle red18Font = xlkRedFont(18);
  static TextStyle red19Font = xlkRedFont(19);
  static TextStyle red20Font = xlkRedFont(20);

  static TextStyle red13Font1 = xlkRedFont(13);
  static TextStyle red12Font1 = xlkRedFont(12);
  static TextStyle red11Font1 = xlkRedFont(11);

  static TextStyle gray11Font2 = xlkGrayFont2(11,);
  static TextStyle gray12Font2 = xlkGrayFont2(12,);
  static TextStyle gray13Font2 = xlkGrayFont2(13,);
  static TextStyle gray14Font2 = xlkGrayFont2(14,);
  static TextStyle gray15Font2 = xlkGrayFont2(15,);
  static TextStyle gray16Font2 = xlkGrayFont2(16,);

  static TextStyle gray13Font1_8 = xlkGrayFont2(13,);

  static TextStyle green10Font = xlkGreenFont(10);
  static TextStyle green11Font = xlkGreenFont(11);
  static TextStyle green12Font = xlkGreenFont(12);
  static TextStyle green13Font = xlkGreenFont(13);
  static TextStyle green14Font = xlkGreenFont(14);
  static TextStyle green15Font = xlkGreenFont(15);
  static TextStyle green16Font = xlkGreenFont(16);
  static TextStyle green17Font = xlkGreenFont(17);
  static TextStyle green18Font = xlkGreenFont(18);
  static TextStyle green19Font = xlkGreenFont(19);
  static TextStyle green20Font = xlkGreenFont(20);

}
