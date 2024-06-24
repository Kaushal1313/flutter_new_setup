import 'package:carzup_logic/button/Button.dart';
import 'package:carzup_logic/componants/shimmers.dart';
import 'package:carzup_logic/config/themeSwicher.dart';
import 'package:carzup_logic/controllers/lodingController.dart';
import 'package:carzup_logic/sizes/gap.dart';
import 'package:carzup_logic/text/BodyText.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// Import the LoadingController

class homeScreen extends StatelessWidget {
  homeScreen({super.key});

  // Initialize the controller
  final LoadingController loadingController = Get.put(LoadingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BodyText(
          text: 'Demo app',
          fontSize: 24,
        ),
        actions: const [ThemeSwitcher()],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() {
              return loadingController.isLoading.value
                  ? const RectangleShimmer(width: 200, height: 20)
                  : const BodyText(text: 'Hello I am Body Text');
            }),
            const HeighGap(),
            Obx(() {
              return loadingController.isLoading.value
                  ? const RectangleShimmer(width: 200, height: 20)
                  : const BodyText(text: 'Hello I am Body Text');
            }),
            const HeighGap(),
            Obx(() {
              return loadingController.isLoading.value
                  ? const RectangleShimmer(width: 200, height: 20)
                  : const BodyText(text: 'Hello I am Body Text');
            }),
            const HeighGap(),
            Obx(() {
              return loadingController.isLoading.value
                  ? const RectangleShimmer(width: 200, height: 20)
                  : const BodyText(text: 'Hello I am Body Text');
            }),
            const HeighGap(),
            Obx(() {
              return loadingController.isLoading.value
                  ? const RectangleShimmer(width: 200, height: 20)
                  : const BodyText(text: 'Hello I am Body Text');
            }),
            const HeighGap(),
            Obx(() {
              return Container(
                height: 50,
                width: 100,
                child: loadingController.isLoading.value
                    ? const RectangleShimmer(width: 100, height: 50)
                    : AppButton(
                        onPressed: () {
                          loadingController.startLoading();
                        },
                        buttonText: 'Demo Button',
                      ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
