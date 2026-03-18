import 'package:flutter/material.dart';
import 'package:islami_app/app_color.dart';

class MyThemeData {
  static ThemeData darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppColor.transparentColor,
    primaryColor: AppColor.primaryColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColor.blackColor,
      iconTheme: IconThemeData(
        color: AppColor.primaryColor,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: AppColor.whiteColor,
      unselectedItemColor: AppColor.blackColor,
    ),
    textTheme: ThemeData.dark().textTheme.apply(
      fontFamily: 'Janna LT',
    ),
  );

}