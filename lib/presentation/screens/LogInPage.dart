import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/presentation/controllers/LoginController.dart';
import 'package:groceries/presentation/misc/AppColor.dart';
import 'package:groceries/presentation/misc/AppIcon.dart';
import 'package:groceries/presentation/misc/AppString.dart';
import 'package:groceries/presentation/misc/AppStyle.dart';
import 'package:groceries/presentation/widget/CelestialButton.dart';
import 'package:groceries/presentation/widget/CelestialImage.dart';
import 'package:groceries/presentation/widget/CelestialText.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CelestialText celestialText = CelestialText();
    TextEditingController emailText = TextEditingController(text: '');
    CelestialImage celestialImage = CelestialImage();
    LoginController loginController = Get.put(LoginController());
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.backgroundColorLight,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                child: celestialImage.celestialImage(AppIcon.carrot, 55, 55),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Text(AppString.loging, style: AppStyle.header1),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Text(AppString.enterEmailPassword,
                    style: AppStyle.labelSubtitle3),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child:
                    Text(AppString.email, style: AppStyle.labelSubtitleNormal),
              ),
              celestialText.celestialTextField("", emailText),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(AppString.password,
                    style: AppStyle.labelSubtitleNormal),
              ),
              celestialText.celestialTextField("", emailText),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Text(AppString.forgotPassword,
                    textAlign: TextAlign.end, style: AppStyle.labelSubtitle2),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: PrimaryButton(
                    text: AppString.submit,
                    color: AppColor.backgroundColorDark,
                    onPressed: () {
                      loginController.onSubmitPress();
                    }),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(AppString.dontHaveAccount,
                        style: AppStyle.labelSubtitle),
                    InkWell(
                        onTap: () {
                          loginController.onSignUpPress();
                        },
                        child: Text(AppString.signUp,
                            style: AppStyle.labelAction2)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
