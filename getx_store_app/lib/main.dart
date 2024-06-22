import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'data/repositories/product_repository.dart';
import 'features/product/controllers/product_controller.dart';
import 'features/routes/app_pages.dart';


void main() async {
  await GetStorage.init(); // Initialize GetStorage

  final productRepository = ProductRepository();
  Get.put(ProductController(repository: productRepository));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FlutterStore App',
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}
