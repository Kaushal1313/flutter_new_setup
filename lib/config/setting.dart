import 'package:carzup_logic/config/Apptheme.dart';
import 'package:carzup_logic/controllers/themeControler.dart';
import 'package:carzup_logic/routes/constants.dart';
import 'package:carzup_logic/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    ThemeController themeController =
        Get.put(ThemeController(), permanent: true);
    return Obx(
      () => GetMaterialApp(
        title: 'Carzup Logic',
        getPages: AppRoutes.routes,
        initialRoute: AppRoutePath.home,
        themeMode: themeController.themeMode.value,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        debugShowCheckedModeBanner: false,
        showSemanticsDebugger: false,
      ),
    );
  }
}
