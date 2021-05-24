import 'package:get/get.dart';

class LocationController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  void onSubmitPress() {
    Get.toNamed('/login');
  }

  void onBackPress() {
    Get.back();
  }
}
