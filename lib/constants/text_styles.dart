

import 'package:flutter/material.dart';
import 'package:venkatesh/constants/colors.dart';


class Styles{

  static const String fontFamilyName = "Roboto";

  static TextStyle semiBoldTextStyle({Color? color,double? fontSize}){
    return TextStyle(
      color: color ?? kWhite,
      fontFamily: fontFamilyName,
      fontSize: fontSize ?? 16,
      fontWeight: FontWeight.w700,
    );
  }


  static TextStyle mediumTextStyle({Color? color,double? fontSize}){
    return TextStyle(
      color: color ?? kWhite,
      fontFamily: fontFamilyName,
      fontSize: fontSize ?? 16,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle regularTextStyle({Color? color,double? fontSize}){
    return TextStyle(
      color: color ?? kWhite,
      fontFamily: fontFamilyName,
      fontSize: fontSize ?? 16,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle headBlackTextStyle({Color? color,double? fontSize}){
    return TextStyle(
      color: color ?? kWhite,
      fontFamily: fontFamilyName,
      fontSize: fontSize ?? 16,
      fontWeight: FontWeight.w900,
    );
  }
}

/*
{
  FontWeight.w100: 'Thin',
  FontWeight.w200: 'ExtraLight',
  FontWeight.w300: 'Light',
  FontWeight.w400: 'Regular',
  FontWeight.w500: 'Medium',
  FontWeight.w600: 'SemiBold',
  FontWeight.w700: 'Bold',
  FontWeight.w800: 'ExtraBold',
  FontWeight.w900: 'Black',
}
 */