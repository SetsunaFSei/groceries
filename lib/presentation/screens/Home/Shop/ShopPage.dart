import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/presentation/controllers/HomeController.dart';
import 'package:groceries/presentation/misc/AppColor.dart';
import 'package:groceries/presentation/misc/AppIcon.dart';
import 'package:groceries/presentation/misc/AppString.dart';
import 'package:groceries/presentation/misc/AppStyle.dart';
import 'package:groceries/presentation/screens/Home/BestSellingPage.dart';
import 'package:groceries/presentation/screens/Home/GroceriesPage.dart';
import 'package:groceries/presentation/widget/CelestialCarousel.dart';
import 'package:groceries/presentation/widget/CelestialImage.dart';
import 'package:groceries/presentation/widget/CelestialText.dart';

import '../ExluciveOfferPage.dart';

class ShopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CelestialImage celestialImage = CelestialImage();
    CelestialText celestialText = CelestialText();
    TextEditingController emailText = TextEditingController(text: '');
    HomeController homeController = Get.put(HomeController());

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.backgroundColorLight,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 30.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                celestialImage.celestialImage(AppIcon.carrot, 50, 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    celestialImage.celestialIcon(
                        AppIcon.exclude, 30, AppColor.blackColor2),
                    Text(
                      AppString.city,
                      style: AppStyle.labelLocation,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                          flex: 11,
                          child:
                              celestialText.celestialTextField("", emailText)),
                      Flexible(
                        flex: 1,
                        child: InkWell(
                          onTap: () {
                            homeController.onSearchPress();
                          },
                          child: celestialImage.celestialIcon(
                              AppIcon.search, 20, AppColor.blackColor2),
                        ),
                      ),
                    ],
                  ),
                ),
                CelestialCoursel(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: ExluciveOfferPage(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: BestSellingPage(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: GroceriesPage(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
