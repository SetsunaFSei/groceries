import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/presentation/controllers/CartController.dart';
import 'package:groceries/presentation/misc/AppColor.dart';
import 'package:groceries/presentation/misc/AppIcon.dart';
import 'package:groceries/presentation/misc/AppImage.dart';
import 'package:groceries/presentation/misc/AppString.dart';
import 'package:groceries/presentation/misc/AppStyle.dart';
import 'package:groceries/presentation/widget/CelestialCustom.dart';
import 'package:groceries/presentation/widget/CelestialImage.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CelestialImage celestialImage = new CelestialImage();
    final CartController cartController = Get.put(CartController());

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.backgroundColorLight,
        body: Column(
          children: [
            Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(
                    AppString.myChart,
                    style: AppStyle.header1,
                  ),
                )),
            CelestialBotomLine(),
            Flexible(
              flex: 10,
              child: Obx(() => ListView.builder(
                  itemCount: cartController.datas.length ?? 0,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Row(
                                  children: [
                                    Flexible(
                                      flex: 2,
                                      child: celestialImage.celestialImage(
                                          AppImage.product, 120, 120),
                                    ),
                                    Flexible(
                                      flex: 8,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      cartController
                                                          .datas[index]
                                                          .productName,
                                                      style: AppStyle
                                                          .labelProductName2,
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          vertical: 8.0),
                                                      child: Text(
                                                        cartController
                                                            .datas[index]
                                                            .weight,
                                                        style: AppStyle
                                                            .labelProduct,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                celestialImage.celestialIcon(
                                                    AppIcon.close,
                                                    10,
                                                    AppColor.blackColor2),
                                              ],
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 10),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    children: [
                                                      celestialImage
                                                          .celestialIcon(
                                                              AppIcon.min,
                                                              30,
                                                              AppColor
                                                                  .blackColor2),
                                                      Text(
                                                        cartController
                                                            .datas[index]
                                                            .quantity,
                                                        style:
                                                            AppStyle.labelPrice,
                                                      ),
                                                      celestialImage
                                                          .celestialIcon(
                                                              AppIcon.plus,
                                                              30,
                                                              AppColor
                                                                  .blackColor2),
                                                    ],
                                                  ),
                                                  Text(
                                                    "Rp " +
                                                        cartController
                                                            .datas[index].price,
                                                    style: AppStyle.labelPrice,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
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
