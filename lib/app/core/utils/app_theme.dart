import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uis_house/app/core/utils/screen_size.dart';

/// AppTheme Class
/// 
/// Here I set my global aplication theme. Here I can change globaly
/// title size, color or style for example.
class AppTheme {
  static final appTheme = ThemeData(
    primaryTextTheme: GoogleFonts.notoSansTextTheme(),
    primaryColor:const Color(0XFF0f64ee),
    //SET Global textTheme. Title, Subtitle, Body, Le
    textTheme: TextTheme(
      // titleLarge: GoogleFonts.notoSansTextTheme().titleLarge!.copyWith(
      //   color: const Color(0XFF5a6265),
      //   fontWeight: FontWeight.bold,
      //   fontSize: ScreenSize.widthMultiplier * 2.70
      // ),

      // titleMedium: GoogleFonts.notoSansTextTheme().titleMedium!.copyWith(
      //   color: Color(0XFF0f64ee)
      // ),

      

      bodyText1: GoogleFonts.notoSansTextTheme().bodyText1?.copyWith(
        color: const Color(0XFF5a6265),
        fontWeight: FontWeight.bold,
        fontSize: ScreenSize.widthMultiplier * 7.50
      ),

      bodyText2: GoogleFonts.notoSansTextTheme().bodyText2?.copyWith(
        color: const Color(0XFF5a6265),
        fontSize: ScreenSize.widthMultiplier * 3.2
      ),

      headline1: GoogleFonts.notoSansTextTheme().headline1?.copyWith(
        color: const Color(0XFF0f64ee),
        fontSize: ScreenSize.widthMultiplier * 5.5
      ),
    )
  );
}
