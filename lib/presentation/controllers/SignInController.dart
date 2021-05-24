import 'package:get/get.dart';

class SignInController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  void onSVerificationPress() {
    Get.toNamed('/verification');
  }
}
