import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groceries/presentation/misc/AppColor.dart';
import 'package:groceries/presentation/misc/AppIcon.dart';

class CelesetialNavBar extends StatelessWidget {
  CelesetialNavBar({this.controller});
  final controller;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      // unselectedItemColor: AppColor.blackColor2,
      // selectedItemColor: AppColor.backgroundIconColorDark,
      onTap: controller.changeTabIndex,
      currentIndex: controller.tabIndex,
      // showSelectedLabels: false,
      // showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      elevation: 0,
      items: [
        _bottomNavigationBarItem(
          icon: AppIcon.shop,
          size: 20,
          tint: controller.bottomNavCurrentIndex.value == 0
              ? AppColor.backgroundIconColorDark
              : AppColor.blackColor2,
          label: 'Shop',
        ),
        _bottomNavigationBarItem(
          icon: AppIcon.explore,
          size: 20,
          tint: controller.bottomNavCurrentIndex.value == 1
              ? AppColor.backgroundIconColorDark
              : AppColor.blackColor2,
          label: 'Explore',
        ),
        _bottomNavigationBarItem(
          icon: AppIcon.cart,
          size: 20,
          tint: controller.bottomNavCurrentIndex.value == 2
              ? AppColor.backgroundIconColorDark
              : AppColor.blackColor2,
          label: 'Cart',
        ),
        _bottomNavigationBarItem(
          icon: AppIcon.love,
          size: 20,
          tint: controller.bottomNavCurrentIndex.value == 3
              ? AppColor.backgroundIconColorDark
              : AppColor.blackColor2,
          label: 'Favorite',
        ),
        _bottomNavigationBarItem(
          icon: AppIcon.pelanggan,
          size: 20,
          tint: controller.bottomNavCurrentIndex.value == 4
              ? AppColor.backgroundIconColorDark
              : AppColor.blackColor2,
          label: 'Account',
        ),
      ],
    );
  }

  _bottomNavigationBarItem(
      {String icon, Color tint, double size, String label}) {
    return BottomNavigationBarItem(
      icon: Image.asset(
        icon,
        color: tint,
        height: size,
        width: size,
      ),
      label: label,
    );
  }
}
