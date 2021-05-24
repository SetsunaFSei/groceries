import 'package:flutter/material.dart';
import 'package:groceries/presentation/controllers/LocationController.dart';
import 'package:groceries/presentation/misc/AppColor.dart';
import 'package:groceries/presentation/misc/AppIcon.dart';
import 'package:groceries/presentation/misc/AppImage.dart';
import 'package:groceries/presentation/misc/AppString.dart';
import 'package:groceries/presentation/misc/AppStyle.dart';
import 'package:groceries/presentation/widget/CelestialButton.dart';
import 'package:groceries/presentation/widget/CelestialDropdown.dart';
import 'package:groceries/presentation/widget/CelestialImage.dart';

class SelectLocationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CelestialImage celestialImage = CelestialImage();
    LocationController locationController = LocationController();
    CelestialDropdown celestialDropdown = new CelestialDropdown();

    return Scaffold(
      backgroundColor: AppColor.backgroundColorLight,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        locationController.onBackPress();
                      },
                      child: celestialImage.celestialIcon(
                          AppIcon.back, 20, AppColor.blackColor),
                    ),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: celestialImage.celestialImage(AppImage.map, 170, 225),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
                AppString.selectLocation,
                textAlign: TextAlign.center,
                style: AppStyle.header1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 90.0),
              child: Text(
                AppString.switchLocation,
                textAlign: TextAlign.center,
                style: AppStyle.labelSubtitleNormal,
              ),
            ),
            Text(AppString.zone, style: AppStyle.labelSubtitle),
            Flexible(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: celestialDropdown.celestialDropdown("One"),
                )),
            Text(AppString.area, style: AppStyle.labelSubtitle),
            Flexible(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: celestialDropdown.celestialDropdown("One"),
                )),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: PrimaryButton(
                    text: AppString.submit,
                    color: AppColor.backgroundColorDark,
                    onPressed: () {
                      locationController.onSubmitPress();
                      // loginController.onLoginPress();
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
