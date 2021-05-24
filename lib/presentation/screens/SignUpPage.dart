import 'package:flutter/material.dart';
import 'package:groceries/presentation/controllers/SignUpController.dart';
import 'package:groceries/presentation/misc/AppColor.dart';
import 'package:groceries/presentation/misc/AppIcon.dart';
import 'package:groceries/presentation/misc/AppString.dart';
import 'package:groceries/presentation/misc/AppStyle.dart';
import 'package:groceries/presentation/widget/CelestialButton.dart';
import 'package:groceries/presentation/widget/CelestialImage.dart';
import 'package:groceries/presentation/widget/CelestialText.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CelestialText celestialText = CelestialText();
    TextEditingController emailText = TextEditingController(text: '');
    CelestialImage celestialImage = CelestialImage();
    SignUpController signUpController = SignUpController();

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.backgroundColorLight,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                child: celestialImage.celestialImage(AppIcon.carrot, 55, null),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                child: Text(
                  AppString.signUp,
                  style: AppStyle.header1,
                ),
              ),
              Text(AppString.enterCredential, style: AppStyle.labelSubtitle3),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0, top: 30.0),
                child: Text(AppString.userName,
                    style: AppStyle.labelSubtitleNormal),
              ),
              celestialText.celestialTextField("", emailText),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child:
                    Text(AppString.email, style: AppStyle.labelSubtitleNormal),
              ),
              celestialText.celestialTextField("", emailText),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Text(AppString.password,
                    style: AppStyle.labelSubtitleNormal),
              ),
              celestialText.celestialTextField("", emailText),
              // Padding(
              //   padding: const EdgeInsets.symmetric(vertical: 10.0),
              //   child: Text(AppString.forgotPassword,
              //       textAlign: TextAlign.end, style: AppStyle.labelSubtitle3),
              // ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Text(
                        AppString.policy,
                        style: AppStyle.labelSubtitle4,
                      ),
                    ),
                    Text(AppString.term, style: AppStyle.labelAction2),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: PrimaryButton(
                    text: AppString.signUp,
                    color: AppColor.backgroundColorDark,
                    onPressed: () {
                      signUpController.onSubmitPress();
                    }),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(AppString.haveAccount, style: AppStyle.labelSubtitle2),
                    InkWell(
                        onTap: () {
                          signUpController.onBackPress();
                        },
                        child: Text(AppString.loging,
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
