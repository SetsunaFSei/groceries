import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/presentation/controllers/FavoriteController.dart';
import 'package:groceries/presentation/misc/AppColor.dart';
import 'package:groceries/presentation/misc/AppIcon.dart';
import 'package:groceries/presentation/misc/AppImage.dart';
import 'package:groceries/presentation/misc/AppString.dart';
import 'package:groceries/presentation/misc/AppStyle.dart';
import 'package:groceries/presentation/widget/CelestialCustom.dart';
import 'package:groceries/presentation/widget/CelestialImage.dart';

class FavoritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final FavoriteController favoriteController = Get.put(FavoriteController());
    CelestialImage celestialImage = new CelestialImage();

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.backgroundColorLight,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
          child: Column(
            children: [
              Flexible(
                  flex: 1,
                  child: Text(
                    AppString.favorite,
                    style: AppStyle.header1,
                  )),
              CelestialBotomLine(),
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
                                flex: 3,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15.0),
                                      child: Text(
                                          "Rp " +
                                              favoriteController
                                                  .datas[index].price,
                                          textAlign: TextAlign.end,
                                          style: AppStyle.labelPrice),
                                    ),
                                    celestialImage.celestialIcon(
                                        AppIcon.next, 20, AppColor.blackColor2),
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
      ),
    );
  }
}
