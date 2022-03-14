import 'package:flutter/material.dart';
import 'package:food_delivery/controllers/popular_product_controller.dart';
import 'package:food_delivery/pages/home/auth/login.dart';
import 'package:food_delivery/pages/home/food/popular_food_detail.dart';
import 'package:food_delivery/pages/home/food/recommended_food.detail.dart';
import 'package:food_delivery/pages/home/food_page_body.dart';
import 'package:food_delivery/pages/home/main_food_page.dart';
import 'package:get/get.dart';
import 'helper/dependencies.dart' as helper;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await helper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Login(),
    );
  }
}
