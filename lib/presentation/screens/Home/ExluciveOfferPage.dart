import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/presentation/controllers/ExlusiveController.dart';
import 'package:groceries/presentation/misc/AppColor.dart';
import 'package:groceries/presentation/misc/AppIcon.dart';
import 'package:groceries/presentation/misc/AppImage.dart';
import 'package:groceries/presentation/misc/AppString.dart';
import 'package:groceries/presentation/misc/AppStyle.dart';
import 'package:groceries/presentation/widget/CelestialButton.dart';
import 'package:groceries/presentation/widget/CelestialImage.dart';

class ExluciveOfferPage extends StatelessWidget {
  ExluciveOfferPage();

  @override
  Widget build(BuildContext context) {
    ExlusiveController exlusiveController = Get.put(ExlusiveController());
    CelestialImage celestialImage = CelestialImage();

    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                  flex: 1,
                  child:
                      Text(AppString.exlusiveOffer, style: AppStyle.header1)),
              Flexible(
                  flex: 1,
                  child: Text(AppString.seeAll, style: AppStyle.labelAction)),
            ],
          ),
          Container(
            height: 300,
            child: Obx(() => ListView.builder(
                itemCount: exlusiveController.datas.length ?? 0,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      exlusiveController.onProductDetailPress();
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 0.4,
                        child: Container(
                          width: 250,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 5.0),
                                  child: celestialImage.celestialImage(
                                      AppImage.product, 120, 60),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 5.0),
                                  child: Text(
                                    exlusiveController.datas[index].productName,
                                    style: AppStyle.labelProduct,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 5.0),
                                  child: Text(
                                      exlusiveController.datas[index].weight,
                                      style: AppStyle.labelWeight),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Rp " +
                                            exlusiveController
                                                .datas[index].price,
                                        style: AppStyle.labelPrice,
                                      ),
                                      CelestialIconCircleButton(
                                        onPressed: () {
                                          // verificationController.onNextPress();
                                        },
                                        icon: AppIcon.plus,
                                        size: 5,
                                        color: AppColor.backgroundColorDark,
                                        tint: AppColor.buttonIconLabel,
                                      )
                                      // celestialImage.celestibalIcon(
                                      //     AppIcon.plus, 20, AppColor.blackColor3),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                })),
          )
        ],
      ),
    );
  }
}
