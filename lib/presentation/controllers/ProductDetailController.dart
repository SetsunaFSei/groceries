import 'package:get/get.dart';

class ProductDetailController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  void onProductDetailPress() {
    Get.toNamed('/product-detail');
  }

  void onBackPress() {
    Get.back();
  }
}
