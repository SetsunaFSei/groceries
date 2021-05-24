import 'package:get/get.dart';
import 'package:groceries/presentation/screens/Home/Account/AccountPage.dart';
import 'package:groceries/presentation/screens/Home/HomePage.dart';
import 'package:groceries/presentation/screens/LogInPage.dart';
import 'package:groceries/presentation/screens/OnBordingPage.dart';
import 'package:groceries/presentation/screens/Product/ProductDetailPage.dart';
import 'package:groceries/presentation/screens/SelectLocationPage.dart';
import 'package:groceries/presentation/screens/SignUpPage.dart';
import 'package:groceries/presentation/screens/SignInPage.dart';
import 'package:groceries/presentation/screens/VerificationPage.dart';

var rootPage = [
  // GetPage(name: '/', page: () => SplashPage()),

  // GetPage(name: '/', page: () => HomePage()),
  GetPage(name: '/', page: () => OnBordingPage()),
  GetPage(
      name: '/sign-in', page: () => SignInPage(), transition: Transition.zoom),
  GetPage(
      name: '/verification',
      page: () => VerificationPage(),
      transition: Transition.zoom),
  GetPage(
      name: '/set-location',
      page: () => SelectLocationPage(),
      transition: Transition.zoom),
  GetPage(name: '/login', page: () => LoginPage(), transition: Transition.zoom),
  GetPage(
      name: '/signup', page: () => SignUpPage(), transition: Transition.zoom),

  GetPage(name: '/home', page: () => HomePage(), transition: Transition.zoom),
  GetPage(
      name: '/product-detail',
      page: () => ProductDetailPage(),
      transition: Transition.zoom),
  // GetPage(
  //     name: '/product-search',
  //     page: () => ProductSearchPage(),
  //     transition: Transition.zoom),

  GetPage(
      name: '/account', page: () => AccountPage(), transition: Transition.zoom),
];
