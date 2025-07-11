import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:online_exam_app/core/theme/app_colors.dart';

abstract class AppTheme{

  static ThemeData getTheme(ColorScheme colorScheme) {
    return ThemeData(
      colorScheme: colorScheme
    );
  }

  static ThemeData lightTheme = getTheme(ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.blue,
      onPrimary: AppColors.white,
      secondary: AppColors.black,
      onSecondary: AppColors.white,
      error: AppColors.red,
      onError: AppColors.white,
      surface: AppColors.white,
      onSurface: AppColors.black)
  );
}