import 'package:get/get.dart';

class LoadingController extends GetxController {
  var isLoading = true.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    startLoading();
    super.onInit();
  }

  void startLoading() {
    isLoading(true);
    Future.delayed(Duration(milliseconds: 500), () => isLoading(false));
  }
}
