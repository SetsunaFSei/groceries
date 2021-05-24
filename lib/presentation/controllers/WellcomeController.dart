import 'package:get/get.dart';

class WellcomeController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  void onStartedPress() {
    Get.toNamed('/sign-in');
  }
}
