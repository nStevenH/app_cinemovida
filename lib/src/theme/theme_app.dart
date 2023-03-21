
import 'package:app_cinemovida/src/constants/colors.dart';
import 'package:app_cinemovida/src/constants/sizes.dart';
import 'package:app_cinemovida/src/constants/weight.dart';
import 'package:flutter/material.dart';

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
        color: white,
        fontSize: Sizes.p10,
        fontFamily: 'roboto',
        fontWeight: medium,
      ),
      selectedItemColor: yellow,
      selectedLabelStyle: TextStyle(
        color: textSecondary,
        fontSize: Sizes.p10,
        fontFamily: 'roboto',
        fontWeight: medium,
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: blue,
      elevation: 4,
    ),
    tabBarTheme: TabBarTheme(
      indicatorSize: TabBarIndicatorSize.label,
      indicatorColor: white,
      labelColor: white,
      labelStyle: TextStyle(
        fontSize: Sizes.p12,
        fontWeight: medium,
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: Sizes.p12,
        fontWeight: medium,
      ),
      unselectedLabelColor: white,
    ),
    fontFamily: 'Roboto',
    scaffoldBackgroundColor: background,
  );
}