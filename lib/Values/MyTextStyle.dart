import 'package:flutter/material.dart';
import 'package:iot/Values/Colors.dart';

class MyTextStyle {

  static const railWayStyle48 = TextStyle(
      fontSize: 48,
      fontFamily: 'RailWay',
      color: Colors.white,
      fontWeight: FontWeight.w900
  );

  static const railWayStyle16 = TextStyle(
      fontSize: 16,
      fontFamily: 'RailWay',
      color: Colors.white,
      fontWeight: FontWeight.w900
  );

  static const poppinsStyle32 = TextStyle(
      fontSize: 32,
      fontFamily: 'Poppins',
      color: Colors.white,
      fontWeight: FontWeight.w800
  );

  static const poppinsStyle14 = TextStyle(
      fontSize: 14,
      fontFamily: 'Poppins',
      color: Colors.white,
      fontWeight: FontWeight.w800
  );

  static const poppinsStyle10 = TextStyle(
      fontSize: 10,
      fontFamily: 'Poppins',
      color: Colors.white,
      fontWeight: FontWeight.w300
  );

  static const poppinsStyle14Blue = TextStyle(
      fontSize: 14,
      fontFamily: 'Poppins',
      color: AppColors.blue,
      fontWeight: FontWeight.w700
  );

  static const poppinsStyle15 = TextStyle(
      fontSize: 15,
      fontFamily: 'Poppins',
      color: Colors.white,
      fontWeight: FontWeight.w400
  );

  static const poppinsStyle157 = TextStyle(
      fontSize: 15,
      fontFamily: 'Poppins',
      color: AppColors.blue,
      fontWeight: FontWeight.w700
  );

  static const poppinsStyle16 = TextStyle(
      fontSize: 16,
      fontFamily: 'Poppins',
      color: Colors.white,
      fontWeight: FontWeight.w900
  );

  static const poppinsStyle20 = TextStyle(
      fontSize: 20,
      fontFamily: 'Poppins',
      color: Colors.white,
      fontWeight: FontWeight.w800
  );

  static const poppinsStyle36 = TextStyle(
      fontSize: 36,
      fontFamily: 'Poppins',
      color: Colors.white,
      fontWeight: FontWeight.w700
  );

  static const poppinsStyle24 = TextStyle(
      fontSize: 24,
      fontFamily: 'Poppins',
      color: Colors.white,
      fontWeight: FontWeight.w300
  );


  static InputDecoration inputDec3 = InputDecoration(
    contentPadding: EdgeInsets.all(10),
    hintStyle: MyTextStyle.poppinsStyle15,
    filled: true,
    fillColor: AppColors.brown,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(color: AppColors.brown, width: 1),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(color: AppColors.brown, width: 1),

    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(color: AppColors.brown, width: 1),
    ),
  );

  static InputDecoration inputDec1 = InputDecoration(
    contentPadding: EdgeInsets.all(8),
    hintStyle: MyTextStyle.poppinsStyle15,
    filled: true,
    fillColor: AppColors.brown,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: AppColors.brown, width: 1),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: AppColors.brown, width: 1),

    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: AppColors.brown, width: 1),
    ),
  );


}
