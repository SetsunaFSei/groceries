import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:groceries/model/BestSellingProduct.dart';

class BestSellingController extends GetxController {
  var isLoading = true.obs;
  final datas = <BestSellingProduct>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchBestSellingProduct("", "", 0, 5, "");
  }

  void onSellAllPress() {
    Get.toNamed('/login');
  }

  void onProductDetailPress() {
    Get.toNamed('/product-detail');
  }

  void fetchBestSellingProduct(String graoupCode, String graoupName,
      int pageIndex, int pageSize, String fieldName) async {
    try {
      isLoading(true);
      final String response =
          await rootBundle.loadString('assets/data/bestproduct.json');
      datas(bestSellingProductFromJson(response));
    } catch (exception) {
      // showSnackBar("Exception", exception.toString(), Colors.red);
    } finally {
      isLoading(false);
    }
  }

  void loadNextPage() => fetchBestSellingProduct("", "", 0 + 1, 5, "");
}
