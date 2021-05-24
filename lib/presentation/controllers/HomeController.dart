import 'package:get/get.dart';

class HomeController extends GetxController {
  var tabIndex = 0;
  var bottomNavCurrentIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  void changeTabIndex(index) {
    bottomNavCurrentIndex(index);
    update();
  }

  void onSubmitPress() {
    Get.toNamed('/login');
  }

  void onSearchPress() {
    Get.toNamed('/product-search');
  }

  void onBackPress() {
    Get.back();
  }
}
