import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:groceries/model/GroceriesProduct.dart';

class GroceriesController extends GetxController {
  var isLoading = true.obs;
  final datas = <GroceriesProduct>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchGroceriesProduct("", "", 0, 5, "");
  }

  void onSellAllPress() {
    Get.toNamed('/login');
  }

  void onProductDetailPress() {
    Get.toNamed('/product-detail');
  }

  void fetchGroceriesProduct(String graoupCode, String graoupName,
      int pageIndex, int pageSize, String fieldName) async {
    try {
      isLoading(true);
      final String response =
          await rootBundle.loadString('assets/data/groceriesproduct.json');
      datas.value = groceriesProductFromJson(response);
    } catch (exception) {
      // showSnackBar("Exception", exception.toString(), Colors.red);
    } finally {
      isLoading(false);
    }
  }

  void loadNextPage() => fetchGroceriesProduct("", "", 0 + 1, 5, "");
}
