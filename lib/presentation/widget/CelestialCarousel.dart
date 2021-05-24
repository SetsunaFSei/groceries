import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:groceries/presentation/misc/AppImage.dart';
import 'package:groceries/presentation/widget/CelestialImage.dart';

class CelestialCoursel extends StatelessWidget {
  CelestialCoursel();

  @override
  Widget build(BuildContext context) {
    CelestialImage celestialImage = CelestialImage();
    return CarouselSlider(
        options: CarouselOptions(height: 250.0, viewportFraction: 1),
        items: [1, 2, 3, 4, 5].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return GestureDetector(
                onTap: () {
                  // homeController.onFlashSalePress();
                },
                child: Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(AppImage.banner),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: Column(
                          children: [
                            celestialImage.celestialImage(
                                AppImage.freshvegetable, 250, 800)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          );
        }).toList());
  }
}
