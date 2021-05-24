import 'package:flutter/material.dart';
import 'package:groceries/presentation/misc/AppColor.dart';
import 'package:groceries/presentation/misc/AppIcon.dart';
import 'package:groceries/presentation/misc/AppImage.dart';
import 'package:groceries/presentation/misc/AppString.dart';
import 'package:groceries/presentation/misc/AppStyle.dart';
import 'package:groceries/presentation/widget/CelestialButton.dart';
import 'package:groceries/presentation/widget/CelestialCustom.dart';
import 'package:groceries/presentation/widget/CelestialImage.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CelestialImage celestialImage = CelestialImage();
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.backgroundColorLight,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                      flex: 2,
                      child: celestialImage.celestialImage(
                          AppImage.product, 100, 100)),
                  Flexible(
                    flex: 10,
                    child: Column(
                      children: [
                        Text(AppString.userEmail),
                        Text(AppString.emailName),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      celestialImage.celestialIcon(
                          AppIcon.bag, 20, AppColor.blackColor2),
                      Text("Order", style: AppStyle.labelAcountList),
                    ],
                  ),
                  celestialImage.celestialIcon(
                      AppIcon.next, 20, AppColor.blackColor2),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CelestialBotomLine(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      celestialImage.celestialIcon(
                          AppIcon.detail, 20, AppColor.blackColor2),
                      Text("MyDetail", style: AppStyle.labelAcountList),
                    ],
                  ),
                  celestialImage.celestialIcon(
                      AppIcon.next, 20, AppColor.blackColor2),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CelestialBotomLine(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      celestialImage.celestialIcon(
                          AppIcon.location, 20, AppColor.blackColor2),
                      Text("Delivery Address", style: AppStyle.labelAcountList),
                    ],
                  ),
                  celestialImage.celestialIcon(
                      AppIcon.next, 20, AppColor.blackColor2),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CelestialBotomLine(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      celestialImage.celestialIcon(
                          AppIcon.payment, 20, AppColor.blackColor2),
                      Text("Payment Methods", style: AppStyle.labelAcountList),
                    ],
                  ),
                  celestialImage.celestialIcon(
                      AppIcon.next, 20, AppColor.blackColor2),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CelestialBotomLine(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      celestialImage.celestialIcon(
                          AppIcon.promo, 20, AppColor.blackColor2),
                      Text("Promo Card", style: AppStyle.labelAcountList),
                    ],
                  ),
                  celestialImage.celestialIcon(
                      AppIcon.next, 20, AppColor.blackColor2),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CelestialBotomLine(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      celestialImage.celestialIcon(
                          AppIcon.bell, 20, AppColor.blackColor2),
                      Text("Notification", style: AppStyle.labelAcountList),
                    ],
                  ),
                  celestialImage.celestialIcon(
                      AppIcon.next, 20, AppColor.blackColor2),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CelestialBotomLine(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      celestialImage.celestialIcon(
                          AppIcon.help, 20, AppColor.blackColor2),
                      Text("Help", style: AppStyle.labelAcountList),
                    ],
                  ),
                  celestialImage.celestialIcon(
                      AppIcon.next, 20, AppColor.blackColor2),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CelestialBotomLine(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      celestialImage.celestialIcon(
                          AppIcon.about, 20, AppColor.blackColor2),
                      Text(
                        "About",
                        style: AppStyle.labelAcountList,
                      ),
                    ],
                  ),
                  celestialImage.celestialIcon(
                      AppIcon.next, 20, AppColor.blackColor2),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: CelestialBotomLine(),
                ),
              ),
              ButtonLeftIcon(
                  icon: AppIcon.exit,
                  text: AppString.loginGoogle,
                  textStyle: AppStyle.labelButtonLight,
                  borderColor: AppColor.backgroundIconColorDark,
                  color: AppColor.whiteColor,
                  onPressed: () {
                    // signInController.onSVerificationPress();
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
