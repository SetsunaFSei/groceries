import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:groceries/presentation/misc/Rooting.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple, fontFamily: 'Gilroy'),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: rootPage,
    );
  }
}
