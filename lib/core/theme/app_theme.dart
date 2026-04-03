import 'package:flutter/material.dart';
import 'package:real_state_app/core/theme/app_colors.dart';
import 'package:real_state_app/core/theme/app_font_sizes.dart';
import 'package:real_state_app/core/theme/app_font_weights.dart';

class AppTheme {
  AppTheme._();
  static const String fontFamily = 'cairo';

  static final ThemeData lightTheme = ThemeData(
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontFamily: AppTheme.fontFamily,
        fontWeight: AppFontWeights.medium,
        fontSize: AppFontSizes.s16,
        color: AppColors.white,
      ),
      titleMedium: TextStyle(
        fontFamily: AppTheme.fontFamily,
        fontWeight: AppFontWeights.light,
        fontSize: AppFontSizes.s16,
        color: AppColors.white,
      ),
      titleSmall: TextStyle(
        fontFamily: AppTheme.fontFamily,
        fontWeight: AppFontWeights.light,
        fontSize: AppFontSizes.s16,
        color: AppColors.accentBlue,
      ),
    ),
  );
}
