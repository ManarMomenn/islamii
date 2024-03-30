
import 'package:flutter/material.dart';

class MyTheme {
  static Color primaryLight= Color(0xffB7935F);
  static Color primaryDark= Color(0xff141A2E);
  static Color blackColor =Color(0xff242424);
  static Color whiteColor =Color(0xffffffff);
  static Color YellowColor =Color(0xffFACC1D);
 static ThemeData lightTheme = ThemeData(
   canvasColor: primaryLight,
   primaryColor: primaryLight,
   scaffoldBackgroundColor: Colors.transparent,
   appBarTheme: AppBarTheme(
     centerTitle: true,
     backgroundColor: Colors.transparent,
     elevation: 0,
     iconTheme: IconThemeData(color: blackColor)
   ),
   bottomNavigationBarTheme: BottomNavigationBarThemeData(
     selectedItemColor: blackColor,
     unselectedItemColor: Colors.white,
     showUnselectedLabels: true,
     backgroundColor: primaryLight,
   ),
   textTheme: TextTheme(
       titleLarge: TextStyle(
         fontWeight: FontWeight.bold,
         fontSize: 30,
         color: blackColor
       ),
     titleMedium: TextStyle(
       fontSize: 25,
       fontWeight: FontWeight.w500,
       color: blackColor
     ),
     titleSmall: TextStyle(
         fontSize: 25,
         fontWeight: FontWeight.w300,
         color: blackColor)
   ),
 );

  static ThemeData darkTheme = ThemeData(
    canvasColor: primaryLight,
    primaryColor: primaryDark,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: whiteColor)
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: YellowColor,
      unselectedItemColor: Colors.white,
      showUnselectedLabels: true,
      backgroundColor: primaryLight,
    ),
    textTheme: TextTheme(
        titleLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: whiteColor
        ),
        titleMedium: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: whiteColor
        ),
        titleSmall: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w300,
            color: YellowColor)
    ),
  );
}