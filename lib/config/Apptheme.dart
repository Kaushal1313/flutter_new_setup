import 'package:carzup_logic/config/AppColors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static ThemeData darkTheme = ThemeData.dark(useMaterial3: true).copyWith(
    sliderTheme: SliderThemeData(
      trackHeight: 2,
      // thumbShape: RoundSliderOverlayShape(overlayRadius: 10),
    ),
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      brightness: Brightness.dark,
      background: darkThemeColors.background,
      onBackground: darkThemeColors.onBackground,
      error: darkThemeColors.error,
      errorContainer: darkThemeColors.error,
      primary: darkThemeColors.accent,
      onPrimary: darkThemeColors.onAccent,
      secondary: darkThemeColors.primary,
      onSecondary: darkThemeColors.onPrimary,
      surface: darkThemeColors.surface,
      onSurface: darkThemeColors.onSurface,
      onError: darkThemeColors.primaryText,
    ),
    dividerColor: darkThemeColors.secondaryText,
    disabledColor: darkThemeColors.disabled,
    scaffoldBackgroundColor: darkThemeColors.background,
    appBarTheme: AppBarTheme(
      backgroundColor: darkThemeColors.primary,
      foregroundColor: darkThemeColors.onPrimary,
    ),
  );
  static ThemeData lightTheme = ThemeData.dark(useMaterial3: true).copyWith(
    sliderTheme: SliderThemeData(
      trackHeight: 2,
      // thumbShape: RoundSliderOverlayShape(overlayRadius: 10),
    ),
    brightness: Brightness.light,
    colorScheme: ColorScheme.dark(
      brightness: Brightness.light,
      background: lightThemeColors.background,
      onBackground: lightThemeColors.onBackground,
      error: lightThemeColors.error,
      errorContainer: lightThemeColors.error,
      primary: lightThemeColors.primary,
      onPrimary: lightThemeColors.onPrimary,
      secondary: lightThemeColors.accent,
      onSecondary: lightThemeColors.onPrimary,
      surface: lightThemeColors.surface,
      onSurface: lightThemeColors.onSurface,
      onError: lightThemeColors.primaryText,
    ),
    dividerColor: lightThemeColors.secondaryText,
    disabledColor: lightThemeColors.disabled,
    scaffoldBackgroundColor: lightThemeColors.background,
    appBarTheme: AppBarTheme(
      backgroundColor: lightThemeColors.primary,
      foregroundColor: lightThemeColors.onPrimary,
    ),
  );
}
