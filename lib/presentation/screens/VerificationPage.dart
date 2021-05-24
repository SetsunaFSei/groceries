import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/presentation/controllers/VerificationController.dart';
import 'package:groceries/presentation/misc/AppColor.dart';
import 'package:groceries/presentation/misc/AppIcon.dart';
import 'package:groceries/presentation/misc/AppString.dart';
import 'package:groceries/presentation/misc/AppStyle.dart';
import 'package:groceries/presentation/widget/CelestialButton.dart';
import 'package:groceries/presentation/widget/CelestialImage.dart';
import 'package:groceries/presentation/widget/CelestialText.dart';

class VerificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CelestialText celestialText = CelestialText();
    TextEditingController emailText = TextEditingController(text: '');
    CelestialImage celestialImage = CelestialImage();
    VerificationController verificationController =
        Get.put(VerificationController());

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.backgroundColorLight,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 30.0, horizontal: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            verificationController.onBackPress();
                          },
                          child: celestialImage.celestialIcon(
                              AppIcon.back, 20, AppColor.blackColor),
                        ),
                      ],
                    )),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 30.0),
                  child: Text(
                    AppString.enterPin,
                    style: AppStyle.header1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text(
                    AppString.code,
                    style: AppStyle.labelSubtitle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 30.0),
                  child: celestialText.celestialTextField("", emailText),
                ),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppString.resendCode,
                    style: AppStyle.labelAction,
                  ),
                  CelestialIconCircleButton(
                    onPressed: () {
                      verificationController.onNextPress();
                    },
                    icon: AppIcon.next,
                    size: 20,
                    color: AppColor.backgroundColorDark,
                    tint: AppColor.buttonIconLabel,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
