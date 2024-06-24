import 'package:flutter/material.dart';

class AppColors {
  // background
  final Color background;
  final Color onBackground;
  // primary card // blue for light and gray for dark
  final Color primary;
  final Color onPrimary;
  // card
  final Color surface;
  final Color onSurface;
  // text
  final Color primaryText;
  final Color secondaryText;
  // button and selected tabs
  final Color accent;
  final Color onAccent;
  // utility
  final Color disabled;
  final Color error;
  final Color success;

  AppColors(
      {required this.background,
      required this.onBackground,
      required this.primary,
      required this.onPrimary,
      required this.surface,
      required this.onSurface,
      required this.primaryText,
      required this.secondaryText,
      required this.accent,
      required this.onAccent,
      required this.disabled,
      required this.error,
      required this.success});
}

var darkThemeColors = AppColors(
  background: const Color(0xff1B252D),
  onBackground: const Color(0xffFFFFFF),
  primary: const Color(0xFF25303D),
  onPrimary: const Color(0xFFFFFFFF),
  surface: const Color(0xFF304253),
  onSurface: const Color(0xFFFFFFFF),
  primaryText: const Color(0xFFFFFFFF),
  secondaryText: const Color(0xFFCECECE),
  accent: const Color(0xff0780F2),
  onAccent: const Color(0xFFFFFFFF),
  disabled: const Color(0xFFCECECE),
  error: const Color(0xFFff4444),
  success: const Color(0xFF00C851),
);

var lightThemeColors = AppColors(
  background: const Color(0xFFF3F3F3),
  onBackground: const Color(0xff000000),
  primary: const Color(0xFF0058AB),
  onPrimary: const Color(0xFFFFFFFF),
  surface: const Color(0xFFFFFFFF),
  onSurface: const Color(0xFF000000),
  primaryText: const Color(0xFF000000),
  secondaryText: const Color(0xFF545454),
  accent: const Color(0xFF0058AB),
  onAccent: const Color(0xFFFFFFFF),
  disabled: const Color(0xFFbebbbb),
  error: const Color(0xFFCC0000),
  success: const Color(0xFF007E33),
);
