import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:groceries/model/ExlusiveProduct.dart';
import 'package:groceries/model/Product.dart';

class FavoriteController extends GetxController {
  var isLoading = true.obs;
  final datas = <Product>[].obs;

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
          await rootBundle.loadString('assets/data/product.json');
      datas.value = productFromJson(response);
    } catch (exception) {
      // showSnackBar("Exception", exception.toString(), Colors.red);
    } finally {
      isLoading(false);
    }
  }

  void loadNextPage() => fetchExluciveProduct("", "", 0 + 1, 5, "");
}
