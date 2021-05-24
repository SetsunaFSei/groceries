import 'package:get/get.dart';

class VerificationController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  void onNextPress() {
    Get.toNamed('/set-location');
  }

  void onBackPress() {
    Get.back();
  }
}
