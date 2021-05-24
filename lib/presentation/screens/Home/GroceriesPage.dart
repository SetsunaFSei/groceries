import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:groceries/presentation/controllers/GroceriesController.dart';
import 'package:groceries/presentation/misc/AppColor.dart';
import 'package:groceries/presentation/misc/AppIcon.dart';
import 'package:groceries/presentation/misc/AppImage.dart';
import 'package:groceries/presentation/misc/AppString.dart';
import 'package:groceries/presentation/misc/AppStyle.dart';
import 'package:groceries/presentation/widget/CelestialButton.dart';
import 'package:groceries/presentation/widget/CelestialImage.dart';

class GroceriesPage extends StatelessWidget {
  GroceriesPage();

  @override
  Widget build(BuildContext context) {
    GroceriesController groceriesController = Get.put(GroceriesController());
    CelestialImage celestialImage = CelestialImage();

    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                  flex: 1,
                  child: Text(AppString.groceries, style: AppStyle.header1)),
              Flexible(
                  flex: 1,
                  child: Text(AppString.seeAll, style: AppStyle.labelAction)),
            ],
          ),
          Row(
            // mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 1,
                child: Card(
                  color: AppColor.yellowBackground,
                  elevation: 0.5,
                  child: Container(
                    width: 300,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(
                        children: [
                          celestialImage.celestialImage(
                              AppImage.pulses, 60, 100),
                          Text(AppString.pulses),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: Card(
                  color: AppColor.greenBackground,
                  elevation: 0.4,
                  child: Container(
                    width: 300,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(
                        children: [
                          celestialImage.celestialImage(AppImage.rice, 60, 100),
                          Text(AppString.rice),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 300,
            child: Obx(() => ListView.builder(
                itemCount: groceriesController.datas.length ?? 0,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      groceriesController.onProductDetailPress();
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
                                    groceriesController
                                        .datas[index].productName,
                                    style: AppStyle.labelProduct,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 5.0),
                                  child: Text(
                                      groceriesController.datas[index].weight,
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
                                            groceriesController
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
