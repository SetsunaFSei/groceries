import 'package:flutter/material.dart';
import 'package:groceries/presentation/misc/AppColor.dart';
import 'package:groceries/presentation/misc/AppImage.dart';
import 'package:groceries/presentation/misc/AppString.dart';
import 'package:groceries/presentation/widget/CelestialButton.dart';
import 'package:groceries/presentation/widget/CelestialImage.dart';

class OrderFailedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CelestialImage celestialImage = CelestialImage();
    return Scaffold(
        backgroundColor: AppColor.backgroundColorLight,
        body: Column(
          children: [
            celestialImage.celestialImage(AppImage.banner, 20, 20),
            Text("Opps! Order Failed"),
            Text("Something went tembly wrong."),
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
