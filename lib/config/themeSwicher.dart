import 'package:carzup_logic/controllers/themeControler.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeSwitcher extends StatelessWidget {
  final Color? color;
  const ThemeSwitcher({super.key, this.color});

  @override
  Widget build(BuildContext context) {
    ThemeController themeController = Get.find<ThemeController>();
    return IconButton(
      onPressed: themeController.toggleTheme,
      icon: ThemeSwitcherIcon(
        color: color,
      ),
    );
  }
}

class ThemeSwitcherIcon extends StatelessWidget {
  final Color? color;
  const ThemeSwitcherIcon({super.key, this.color});
  @override
  Widget build(BuildContext context) {
    ThemeController themeController = Get.find<ThemeController>();
    var theme = Theme.of(context);
    return Obx(
      () => Icon(
        themeController.themeMode.value == ThemeMode.light
            ? Icons.brightness_6_outlined
            : Icons.brightness_2_outlined,
        color: color ?? theme.colorScheme.onPrimary,
      ),
    );
  }
}
