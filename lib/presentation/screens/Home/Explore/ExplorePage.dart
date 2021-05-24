import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/presentation/controllers/ExploreController.dart';
import 'package:groceries/presentation/misc/AppColor.dart';
import 'package:groceries/presentation/misc/AppImage.dart';
import 'package:groceries/presentation/misc/AppString.dart';
import 'package:groceries/presentation/misc/AppStyle.dart';
import 'package:groceries/presentation/widget/CelestialImage.dart';
import 'package:groceries/presentation/widget/CelestialText.dart';

class ExplorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CelestialImage celestialImage = CelestialImage();
    CelestialText celestialText = CelestialText();
    TextEditingController emailText = TextEditingController(text: '');
    ExplorerController explorerController = Get.put(ExplorerController());

    return Scaffold(
      backgroundColor: AppColor.backgroundColorLight,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              AppString.findProduct,
              style: AppStyle.header1,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: celestialText.celestialTextField("", emailText),
          ),
          Expanded(
              child: Obx(
            () => GridView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: (174 / 189),
                ),
                itemCount: explorerController.datas.length ?? 0,
                itemBuilder: (context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8),
                    child: Card(
                      color: ((index % 2) == 0.0)
                          ? AppColor.yellowBackground
                          : AppColor.greenBackground,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        side: BorderSide(
                            width: 1, color: AppColor.yellowBackground),
                      ),
                      elevation: 2,
                      child: InkWell(
                        onTap: () {},
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      child: celestialImage.celestialImage(
                                          AppImage.product, 200, 200),
                                    ),
                                    Container(
                                      child: Text("Fresh Fruits & Vegetable",
                                          style: AppStyle.labelProduct),
                                    )
                                  ],
                                ),
                              ],
                            )),
                      ),
                    ),
                  );
                }),
          )),
        ],
      ),
    );
  }
}
