import 'package:flutter/material.dart';

class AppThemes {
  static const darkBlue = Color(0xff2D5BA0);
  static const blue =  Color(0xff1E73C1);
  static const lightBlue = Color(0xff127BDC);
  static const red = Color(0xffF21212);
  static const green = Color(0xff177315);
  static const white = Colors.white;
  static const black = Colors.black;

  static const level1 = Color(0xff8D4231);
  static const level2 = Color(0xffE7974D);
  static const level3 = Color(0xff70B857);
  static const level4 = Color(0xff763CBF);
  static const level5 = Color(0xff2D2D2D);

  double defaultFormHeight = 55.0; //default form text height
  double minSpacing = 4.0;
  double defaultSpacing = 8.0;
  double biggerSpacing = 12.0;
  double extraSpacing = 16.0;
  double veryExtraSpacing = 30.0;

  TextStyle text1({required Color color}) {
    TextStyle text = TextStyle(
      color: color,
      fontSize: 32,
    );
    return text;
  }

  TextStyle text2({required Color color}) {
    TextStyle text = TextStyle(
      color: color,
      fontSize: 24,
    );
    return text;
  }

  TextStyle text3({required Color color}) {
    TextStyle text = TextStyle(
      color: color,
      fontSize: 18,
    );
    return text;
  }

  TextStyle text4({required Color color}) {
    TextStyle text = TextStyle(
      color: color,
      fontSize: 16,
    );
    return text;
  }

  TextStyle text5({required Color color}) {
    TextStyle text = TextStyle(
      color: color,
      fontSize: 14,
    );
    return text;
  }

  TextStyle text6({required Color color}) {
    TextStyle text = TextStyle(
      color: color,
      fontSize: 12,
    );
    return text;
  }

  TextStyle text1Bold({required Color color}) {
    TextStyle text = TextStyle(
      color: color,
      fontSize: 32,
      fontWeight: FontWeight.w700,
    );
    return text;
  }

  TextStyle text2Bold({required Color color}) {
    TextStyle text = TextStyle(
      color: color,
      fontSize: 24,
      fontWeight: FontWeight.w700,
    );
    return text;
  }

  TextStyle text3Bold({required Color color}) {
    TextStyle text = TextStyle(
      color: color,
      fontSize: 18,
      fontWeight: FontWeight.w700,
    );
    return text;
  }

  TextStyle text4Bold({required Color color}) {
    TextStyle text = TextStyle(
      color: color,
      fontSize: 16,
      fontWeight: FontWeight.w700,
    );
    return text;
  }

  TextStyle text5Bold({required Color color}) {
    TextStyle text = TextStyle(
      color: color,
      fontSize: 14,
      fontWeight: FontWeight.w700,
    );
    return text;
  }

  TextStyle text6Bold({required Color color}) {
    TextStyle text = TextStyle(
      color: color,
      fontSize: 12,
      fontWeight: FontWeight.w700,
    );
    return text;
  }

}