import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/product_controller.dart';

class ProfileView extends StatelessWidget {
  final ProductController controller = Get.find();
  ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: ElevatedButton(
              onPressed: () {
                controller.clearAllProducts();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: Size(60, 50),
              ),
              child: Text(
                'Clear All Products',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
