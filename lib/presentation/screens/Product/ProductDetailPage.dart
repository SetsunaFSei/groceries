import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:groceries/presentation/misc/AppColor.dart';
import 'package:groceries/presentation/misc/AppIcon.dart';
import 'package:groceries/presentation/misc/AppString.dart';
import 'package:groceries/presentation/widget/CelestialButton.dart';
import 'package:groceries/presentation/widget/CelestialCarousel.dart';
import 'package:groceries/presentation/widget/CelestialImage.dart';
import 'package:groceries/presentation/widget/CelestialText.dart';

class ProductDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CelestialImage celestialImage = CelestialImage();
    CelestialText celestialText = new CelestialText();
    TextEditingController emailText = TextEditingController(text: '');
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.backgroundColorLight,
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                celestialImage.celestialIcon(
                    AppIcon.back, 20, AppColor.blackColor3),
                celestialImage.celestialIcon(
                    AppIcon.upload, 20, AppColor.blackColor3)
              ],
            ),
            CelestialCoursel(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text("Naturel Red Apple"),
                    Text("1kg, Price"),
                  ],
                ),
                celestialImage.celestialIcon(
                    AppIcon.love, 20, AppColor.blackColor3)
              ],
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
                          child:
                              celestialText.celestialTextField("", emailText)),
                      Flexible(
                        flex: 1,
                        child: celestialImage.celestialIcon(
                            AppIcon.plus, 20, AppColor.blackColor3),
                      )
                    ],
                  ),
                ),
                Flexible(flex: 8, child: Text("Rp 4.99")),
              ],
            ),
            Flexible(
              flex: 1,
              child: ExpandablePanel(
                header: Text("Product Detail"),
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
            Flexible(
              flex: 1,
              child: ExpandablePanel(
                header: Text("Nutritions"),
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
            Flexible(
              flex: 1,
              child: ExpandablePanel(
                header: Text("Review"),
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
    );
  }
}
