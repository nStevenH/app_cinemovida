import 'package:app_cinemovida/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData appTheme() {
  return ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: blue,
      elevation: 0,
      centerTitle: true,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: blue,
      type: BottomNavigationBarType.fixed,
      elevation: 0,
      unselectedIconTheme: const IconThemeData(color: icon),
      unselectedItemColor: textTertiary,
      unselectedLabelStyle: TextStyle(
        color: Colors.white,
        fontSize: 10.sp,
        fontFamily: 'roboto',
        fontWeight: FontWeight.w500,
      ),
      selectedItemColor: yellow,
      selectedLabelStyle: TextStyle(
        color: textSecondary,
        fontSize: 10.sp,
        fontFamily: 'roboto',
        fontWeight: FontWeight.w500,
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: blue,
      elevation: 4,
    ),
    fontFamily: 'Roboto',
    scaffoldBackgroundColor: background,
  );
}