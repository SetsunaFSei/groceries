import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/presentation/controllers/WellcomeController.dart';
import 'package:groceries/presentation/misc/AppColor.dart';
import 'package:groceries/presentation/misc/AppIcon.dart';
import 'package:groceries/presentation/misc/AppImage.dart';
import 'package:groceries/presentation/misc/AppString.dart';
import 'package:groceries/presentation/misc/AppStyle.dart';
import 'package:groceries/presentation/widget/CelestialButton.dart';
import 'package:groceries/presentation/widget/CelestialImage.dart';

class OnBordingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CelestialImage celestialImage = CelestialImage();
    WellcomeController wellcomeController = Get.put(WellcomeController());
    return SafeArea(
      child: Scaffold(
          body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImage.background),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: celestialImage.celestialIcon(
                    AppIcon.carrotWhite, 60, AppColor.backgroundColorLight),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 120.0),
              child: Text(AppString.wellcome,
                  textAlign: TextAlign.center, style: AppStyle.labelWellcome),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 59.0),
              child: Text(AppString.groceriesMoto,
                  textAlign: TextAlign.center, style: AppStyle.labelSubtitle),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 30.0, right: 30.0, top: 40.0, bottom: 90.0),
              child: PrimaryButton(
                  text: AppString.getStarted,
                  color: AppColor.backgroundColorDark,
                  onPressed: () {
                    wellcomeController.onStartedPress();
                    // loginController.onLoginPress();
                  }),
            ),
          ],
        ),
      )),
    );
  }
}
