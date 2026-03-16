import 'package:flutter/material.dart';
import 'package:islami_app/app_color.dart';

class MyThemeData {
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColor.transparentColor,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: AppColor.whiteColor,
      unselectedItemColor: AppColor.blackColor,
    ),
  );

}