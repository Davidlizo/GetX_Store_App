import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/bottom_navbar_controller.dart';
import '../controllers/product_controller.dart';

class AddProductButton extends StatelessWidget {
  const AddProductButton({
    super.key,
    required this.nameController,
    required this.descriptionController,
    required this.priceController,
    required File? selectedImage,
    required this.controller,
  }) : _selectedImage = selectedImage;

  final TextEditingController nameController;
  final TextEditingController descriptionController;
  final TextEditingController priceController;
  final File? _selectedImage;
  final ProductController controller;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        final name = nameController.text;
        final description = descriptionController.text;
        final price = double.tryParse(priceController.text) ?? 0.0;
        if (name.isNotEmpty &&
            description.isNotEmpty &&
            _selectedImage != null) {
          controller.addProduct(name, description, price, _selectedImage);

          // Clear the text fields
          nameController.clear();
          descriptionController.clear();
          priceController.clear();

          // Get the BottomNavController instance and update the selected index to 0
          final BottomNavController navController = Get.find();
          navController.selectedIndex.value = 0;
          
        } else {
          Get.snackbar(
            'Error',
            'Please fill all fields and select an image',
            snackPosition: SnackPosition.BOTTOM,
          );
        }
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        minimumSize: Size(60, 50),
      ),
      child: Text(
        'Add Product',
        style: TextStyle(
            color: Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.italic),
      ),
    );
  }
}
