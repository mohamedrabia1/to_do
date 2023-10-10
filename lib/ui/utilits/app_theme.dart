

import 'package:flutter/material.dart';
import 'package:to_do/ui/utilits/app_color.dart';

abstract class AppTheme{
  static const TextStyle appBarTextStyle = TextStyle(fontWeight: FontWeight.bold,
  fontSize: 22,color: AppColor.white);
  static const TextStyle tackTitleTextStyle = TextStyle(fontWeight: FontWeight.bold,
      fontSize: 18,color: AppColor.primaryColor);
  static const TextStyle tackDescriptionTextStyle = TextStyle(fontWeight: FontWeight.normal,
      fontSize: 14,color: AppColor.lightBlack);
  static const TextStyle bottomSheetTitleTextStyle = TextStyle(fontWeight: FontWeight.bold,
      fontSize: 20,color: AppColor.black);

  static ThemeData lightTheme = ThemeData(
    primaryColor: AppColor.primaryColor,
    appBarTheme: AppBarTheme(
      color: AppColor.primaryColor,
      elevation: 0,
      titleTextStyle: appBarTextStyle
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColor.primaryColor,
      unselectedItemColor: AppColor.grey,
      selectedIconTheme: IconThemeData(size: 32),
      unselectedIconTheme: IconThemeData(size: 32),
      showSelectedLabels: false,
      showUnselectedLabels: false
    ),

  );














}