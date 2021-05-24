import 'package:flutter/material.dart';
import 'package:groceries/presentation/misc/AppColor.dart';
import 'package:groceries/presentation/misc/AppImage.dart';
import 'package:groceries/presentation/misc/AppString.dart';
import 'package:groceries/presentation/widget/CelestialButton.dart';
import 'package:groceries/presentation/widget/CelestialImage.dart';

class OrderAcceptedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CelestialImage celestialImage = CelestialImage();
    return Scaffold(
        backgroundColor: AppColor.backgroundColorLight,
        body: Column(
          children: [
            celestialImage.celestialImage(AppImage.banner, 50, 50),
            Text("Your Order has been accepted"),
            Text(
                "Your items has been placed and is on it'\s way to being processed"),
            PrimaryButton(
                text: AppString.getStarted,
                color: AppColor.backgroundColorDark,
                onPressed: () {
                  // wellcomeController.onStartedPress();
                  // loginController.onLoginPress();
                }),
            PrimaryButton(
                text: AppString.getStarted,
                color: AppColor.backgroundColorDark,
                onPressed: () {
                  // wellcomeController.onStartedPress();
                  // loginController.onLoginPress();
                }),
          ],
        ));
  }
}
