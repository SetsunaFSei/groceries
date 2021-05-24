import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries/presentation/controllers/HomeController.dart';
import 'package:groceries/presentation/misc/AppColor.dart';
import 'package:groceries/presentation/screens/Home/Account/AccountPage.dart';
import 'package:groceries/presentation/screens/Home/Cart/CartPage.dart';
import 'package:groceries/presentation/screens/Home/Explore/ExplorePage.dart';
import 'package:groceries/presentation/screens/Home/Favorite/FavoritePage.dart';
import 'package:groceries/presentation/screens/Home/Shop/ShopPage.dart';
import 'package:groceries/presentation/widget/CelestialNavbar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    List<Widget> _container = [
      new ShopPage(),
      new ExplorePage(),
      new CartPage(),
      new FavoritePage(),
      new AccountPage()
    ];
    // int _bottomNavCurrentIndex = 0;

    return SafeArea(
        child: Obx(
      () => Scaffold(
          backgroundColor: AppColor.backgroundColorLight,
          body: _container[homeController.bottomNavCurrentIndex.value],
          bottomNavigationBar: CelesetialNavBar(
            controller: homeController,
          )),
    ));
  }
}
