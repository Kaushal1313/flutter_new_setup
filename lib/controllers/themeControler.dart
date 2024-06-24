import 'dart:developer';

import 'package:carzup_logic/helpers/localStorageHelper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {
  final Rx<ThemeMode> themeMode = ThemeMode.light.obs;
  toggleTheme() async {
    if (themeMode.value == ThemeMode.dark) {
      await changTheme(mode: ThemeMode.light);
    } else {
      await changTheme(mode: ThemeMode.dark);
    }
  }

  changTheme({required ThemeMode mode}) async {
    themeMode.value = mode;
    try {
      switch (mode) {
        case ThemeMode.dark:
          await LocalStorageHelper.setItem('theme', 'dark');
          break;
        case ThemeMode.light:
          await LocalStorageHelper.setItem('theme', 'light');
          break;
        case ThemeMode.system:
          await LocalStorageHelper.setItem('theme', 'system');
          break;
        default:
          await LocalStorageHelper.setItem('theme', 'light');
          break;
      }
    } catch (e) {
      log(e.toString());
    }
  }

  _setDefaultTheme() async {
    var themeStr = await LocalStorageHelper.getItem('theme');
    try {
      switch (themeStr) {
        case 'dark':
          changTheme(mode: ThemeMode.dark);
          break;
        case 'light':
          changTheme(mode: ThemeMode.light);
          break;
        case 'system':
          changTheme(mode: ThemeMode.system);
          break;
        default:
      }
    } catch (e) {
      log(e.toString());
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    _setDefaultTheme();
    super.onInit();
  }
}
