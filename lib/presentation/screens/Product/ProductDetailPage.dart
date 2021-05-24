import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/presentation/controllers/ProductDetailController.dart';
import 'package:groceries/presentation/misc/AppColor.dart';
import 'package:groceries/presentation/misc/AppIcon.dart';
import 'package:groceries/presentation/misc/AppString.dart';
import 'package:groceries/presentation/misc/AppStyle.dart';
import 'package:groceries/presentation/widget/CelestialButton.dart';
import 'package:groceries/presentation/widget/CelestialCarousel.dart';
import 'package:groceries/presentation/widget/CelestialCustom.dart';
import 'package:groceries/presentation/widget/CelestialImage.dart';
import 'package:groceries/presentation/widget/CelestialText.dart';

class ProductDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CelestialImage celestialImage = CelestialImage();
    CelestialText celestialText = new CelestialText();
    TextEditingController emailText = TextEditingController(text: '1');
    ProductDetailController productDetailController =
        Get.put(ProductDetailController());
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.backgroundColorLight,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      productDetailController.onBackPress();
                    },
                    child: celestialImage.celestialIcon(
                        AppIcon.back, 20, AppColor.blackColor),
                  ),
                  celestialImage.celestialIcon(
                      AppIcon.upload, 20, AppColor.blackColor)
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CelestialCoursel(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Naturel Red Apple",
                          style: AppStyle.header2,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Text(
                            "1kg, Price",
                            // textAlign: TextAlign.left,
                            style: AppStyle.labelWeight2,
                          ),
                        ),
                      ],
                    ),
                    celestialImage.celestialIcon(
                        AppIcon.love, 20, AppColor.blackColor3)
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 4,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          flex: 1,
                          child: celestialImage.celestialIcon(
                              AppIcon.min, 20, AppColor.blackColor3),
                        ),
                        Flexible(
                            flex: 1,
                            child: celestialText.celestialTextField(
                                "", emailText)),
                        Flexible(
                          flex: 1,
                          child: celestialImage.celestialIcon(
                              AppIcon.plus, 20, AppColor.blackColor3),
                        )
                      ],
                    ),
                  ),
                  Flexible(
                      flex: 8, child: Text("Rp 4.99", style: AppStyle.header2)),
                ],
              ),
              CelestialBotomLine(),
              Expanded(
                child: ExpandablePanel(
                  header: Text("Product Detail", style: AppStyle.labelProduct),
                  collapsed: Text(
                    "",
                    softWrap: true,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
                    style: AppStyle.labelSubtitle5,
                    softWrap: true,
                  ),
                  // tapHeaderToExpand: true,
                  // hasIcon: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: CelestialBotomLine(),
              ),
              Flexible(
                flex: 1,
                child: ExpandablePanel(
                  header: Text("Nutritions", style: AppStyle.labelProduct),
                  collapsed: Text(
                    "",
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
                    softWrap: true,
                  ),
                  // tapHeaderToExpand: true,
                  // hasIcon: true,
                ),
              ),
              CelestialBotomLine(),
              Flexible(
                flex: 1,
                child: ExpandablePanel(
                  header: Text("Review", style: AppStyle.labelProduct),
                  collapsed: Text(
                    "",
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  expanded: Text(
                    "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
                    softWrap: true,
                  ),
                  // tapHeaderToExpand: true,
                  // hasIcon: true,
                ),
              ),
              PrimaryButton(
                  text: AppString.addToBasket,
                  color: AppColor.backgroundColorDark,
                  onPressed: () {
                    // wellcomeController.onStartedPress();
                    // loginController.onLoginPress();
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
