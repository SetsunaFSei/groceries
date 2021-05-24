import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/presentation/controllers/CartController.dart';
import 'package:groceries/presentation/controllers/FavoriteController.dart';
import 'package:groceries/presentation/misc/AppColor.dart';
import 'package:groceries/presentation/misc/AppIcon.dart';
import 'package:groceries/presentation/misc/AppImage.dart';
import 'package:groceries/presentation/misc/AppString.dart';
import 'package:groceries/presentation/misc/AppStyle.dart';
import 'package:groceries/presentation/widget/CelestialCustom.dart';
import 'package:groceries/presentation/widget/CelestialImage.dart';
import 'package:groceries/presentation/widget/CelestialText.dart';

class FavoritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CelestialText celestialText = new CelestialText();
    TextEditingController search = TextEditingController(text: '');
    final FavoriteController favoriteController = Get.put(FavoriteController());
    CelestialImage celestialImage = new CelestialImage();

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.backgroundColorLight,
        body: Column(
          children: [
            Flexible(
                flex: 1,
                child: Text(
                  AppString.favorite,
                  style: AppStyle.header1,
                )),
            Flexible(
              flex: 10,
              child: Obx(() => ListView.builder(
                  itemCount: favoriteController.datas.length ?? 0,
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          // mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              flex: 10,
                              child: Row(
                                children: [
                                  Flexible(
                                    flex: 2,
                                    child: celestialImage.celestialImage(
                                        AppImage.product, 80, 80),
                                  ),
                                  Flexible(
                                    flex: 1,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        // mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            favoriteController
                                                .datas[index].productName,
                                            style: AppStyle.labelProduct,
                                          ),
                                          Text(
                                            favoriteController
                                                .datas[index].weight,
                                            style: AppStyle.labelProduct,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              child: Column(
                                children: [
                                  celestialImage.celestialIcon(AppIcon.close,
                                      20, AppColor.backgroundIconColorDark),
                                  Text(
                                      "Rp " +
                                          favoriteController.datas[index].price,
                                      textAlign: TextAlign.end,
                                      style: AppStyle.labelPrice),
                                ],
                              ),
                            ),
                          ],
                        ),
                        CelestialBotomLine()
                      ],
                    );
                  })),
            )
          ],
        ),
      ),
    );
  }
}
