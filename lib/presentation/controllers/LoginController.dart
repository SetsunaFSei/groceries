import 'package:get/get.dart';

class LoginController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  void onSubmitPress() {
    Get.toNamed('/home');
  }

  void onSignUpPress() {
    Get.toNamed('/signup');
  }

  void onBackPress() {
    Get.back();
  }
}
