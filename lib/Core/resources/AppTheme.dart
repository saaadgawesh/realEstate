import 'package:flutter/material.dart';
import 'package:real_state_app/Core/resources/App_Color.dart';
import 'package:real_state_app/Core/resources/App_FontSize.dart';
import 'package:real_state_app/Core/resources/App_FontWeight.dart';

class AppTheme {
  static const String fontfamily = 'cairo';

  static ThemeData LightTheme = ThemeData(
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontFamily: AppTheme.fontfamily,
        fontWeight: AppFontWeight.medium,
        fontSize: AppFontsize.s16,
        color: AppColor.whitecolor,
      ),
      titleMedium: TextStyle(
        fontFamily: AppTheme.fontfamily,
        fontWeight: AppFontWeight.light,
        fontSize: AppFontsize.s16,
        color: AppColor.whitecolor,
      ),
      titleSmall: TextStyle(
        fontFamily: AppTheme.fontfamily,
        fontWeight: AppFontWeight.light,
        fontSize: AppFontsize.s16,
        color: AppColor.bluecolor,
      ),
    ),
  );
}
