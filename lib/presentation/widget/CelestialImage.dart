import 'package:flutter/material.dart';
import 'package:groceries/presentation/misc/AppColor.dart';

class CelestialImage {
  Widget celestialImage(String imgUrl, double height, double width) => Image(
        image: AssetImage(imgUrl),
        height: height,
        width: width,
      );

  Widget celestialIcon(String imgUrl, double size, Color tint,
          {bool isTint = false}) =>
      isTint
          ? ImageIcon(
              AssetImage(imgUrl),
              size: size,
              color: AppColor.backgroundColorLight,
            )
          : ImageIcon(
              AssetImage(imgUrl),
              size: size,
              color: tint,
            );
}
