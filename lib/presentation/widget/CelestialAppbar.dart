import 'package:flutter/material.dart';
import 'package:groceries/presentation/misc/AppColor.dart';
import 'package:groceries/presentation/misc/AppIcon.dart';
import 'package:groceries/presentation/widget/CelestialImage.dart';

class CelestialAppBar {
  CelestialImage celestialImage = CelestialImage();
  Widget appBarLeftIcon(
          String iconLeft, Color color, GestureTapCallback onPressed) =>
      AppBar(
        backgroundColor: color,
        leading: IconButton(
          icon: celestialImage.celestialIcon(
              AppIcon.back, 20, AppColor.backgroundColorDark),
          onPressed: () {},
          // onPressed: () => {},
        ),
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
      );
}
