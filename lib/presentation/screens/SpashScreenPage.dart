import 'package:flutter/material.dart';
import 'package:groceries/presentation/misc/AppColor.dart';
import 'package:groceries/presentation/misc/AppImage.dart';
import 'package:groceries/presentation/widget/CelestialImage.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CelestialImage celestialImage = new CelestialImage();
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.backgroundColorDark,
        body: Center(
            child: celestialImage.celestialImage(AppImage.logoWhite, 267, 68)),
      ),
    );
  }
}
