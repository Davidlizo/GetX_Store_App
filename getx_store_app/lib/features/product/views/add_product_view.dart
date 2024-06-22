import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/product_controller.dart';
import '../widgets/add_product_button.dart';
import '../widgets/add_product_textfield.dart';
import '../widgets/image_picker_container.dart';

class AddProductScreen extends StatefulWidget {
  @override
  _AddProductScreenState createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  final ProductController controller = Get.find();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  File? _selectedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Add Product'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 50.0),
          child: Column(
            children: [
              AddProductTextfield(
                  nameController: nameController,
                  descriptionController: descriptionController,
                  priceController: priceController),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () async {
                  final pickedImage = await controller.pickImage();
                  setState(() {
                    _selectedImage = pickedImage;
                  });
                },
                child: _selectedImage == null
                    ? ImagePickerContainer()
                    : ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.file(
                          _selectedImage!,
                          width: 330,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
              ),
              SizedBox(height: 20),
              AddProductButton(
                  nameController: nameController,
                  descriptionController: descriptionController,
                  priceController: priceController,
                  selectedImage: _selectedImage,
                  controller: controller)
            ],
          ),
        ),
      ),
    );
  }
}
