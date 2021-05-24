import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/presentation/controllers/SignInController.dart';
import 'package:groceries/presentation/misc/AppColor.dart';
import 'package:groceries/presentation/misc/AppIcon.dart';
import 'package:groceries/presentation/misc/AppImage.dart';
import 'package:groceries/presentation/misc/AppString.dart';
import 'package:groceries/presentation/misc/AppStyle.dart';
import 'package:groceries/presentation/widget/CelestialButton.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SignInController signInController = Get.put(SignInController());
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColor.whiteColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImage.vegetable),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 30.0, right: 320.0, bottom: 30.0),
              child: Text(
                AppString.groceriesMotoNecar,
                style: AppStyle.header1,
              ),
            ),
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: InternationalPhoneNumberInput(
                  onInputChanged: (PhoneNumber number) {
                    print(number.phoneNumber);
                  },
                  onInputValidated: (bool value) {
                    print(value);
                  },
                  selectorConfig: SelectorConfig(
                    selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                  ),
                  ignoreBlank: false,
                  autoValidateMode: AutovalidateMode.disabled,
                  selectorTextStyle: TextStyle(color: Colors.black),
                  // initialValue: number,
                  // textFieldController: controller,
                  formatInput: false,
                  keyboardType: TextInputType.numberWithOptions(
                      signed: true, decimal: true),
                  inputBorder: OutlineInputBorder(),
                  onSaved: (PhoneNumber number) {
                    print('On Saved: $number');
                  },
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10.0, top: 20.0),
                child: Text(
                  AppString.connectWithSM,
                  textAlign: TextAlign.center,
                  style: AppStyle.labelSubtitle,
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 30.0),
                child: ButtonLeftIcon(
                    icon: AppIcon.google,
                    text: AppString.loginGoogle,
                    textStyle: AppStyle.labelButtonLight,
                    borderColor: AppColor.blackColor,
                    color: AppColor.googleBackgroundColor,
                    onPressed: () {
                      signInController.onSVerificationPress();
                    }),
              ),
            ),
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 30.0),
                child: ButtonLeftIcon(
                    icon: AppIcon.fb,
                    text: AppString.loginFb,
                    textStyle: AppStyle.labelButtonLight,
                    borderColor: AppColor.blackColor,
                    color: AppColor.facebookBackgroundColor,
                    onPressed: () {
                      signInController.onSVerificationPress();
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
