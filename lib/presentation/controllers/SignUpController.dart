import 'package:get/get.dart';

class SignUpController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  void onSubmitPress() {
    Get.toNamed('/home');
  }

  void onBackPress() {
    Get.back();
  }
}
