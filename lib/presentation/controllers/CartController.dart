import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:groceries/model/Cart.dart';
import 'package:groceries/model/ExlusiveProduct.dart';

class CartController extends GetxController {
  // final productGroups = <Body>[].obs;
  var isLoading = true.obs;
  final datas = <Cart>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchExluciveCart("", "", 0, 5, "");
  }

  // void onSellAllPress() {
  //   Get.toNamed('/login');
  // }

  // void onProductDetailPress() {
  //   Get.toNamed('/product-detail');
  // }

  void fetchExluciveCart(String graoupCode, String graoupName, int pageIndex,
      int pageSize, String fieldName) async {
    try {
      isLoading(true);
      final String response =
          await rootBundle.loadString('assets/data/cart.json');
      datas.value = cartFromJson(response);
    } catch (exception) {
      // showSnackBar("Exception", exception.toString(), Colors.red);
    } finally {
      isLoading(false);
    }
  }

  void loadNextPage() => fetchExluciveCart("", "", 0 + 1, 5, "");
}
