import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:groceries/model/ExlusiveProduct.dart';

class ExlusiveController extends GetxController {
  // final productGroups = <Body>[].obs;
  var isLoading = true.obs;
  final datas = <ExlusiveProduct>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchExluciveProduct("", "", 0, 5, "");
  }

  void onSellAllPress() {
    Get.toNamed('/login');
  }

  void onProductDetailPress() {
    Get.toNamed('/product-detail');
  }

  void fetchExluciveProduct(String graoupCode, String graoupName, int pageIndex,
      int pageSize, String fieldName) async {
    try {
      isLoading(true);
      final String response =
          await rootBundle.loadString('assets/data/exlusiveproduct.json');
      datas.value = exlusiveProductFromJson(response);
    } catch (exception) {
      // showSnackBar("Exception", exception.toString(), Colors.red);
    } finally {
      isLoading(false);
    }
  }

  void loadNextPage() => fetchExluciveProduct("", "", 0 + 1, 5, "");
}
