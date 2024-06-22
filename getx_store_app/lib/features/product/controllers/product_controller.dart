import 'dart:io';

import 'package:flutter_share/flutter_share.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uuid/uuid.dart';

import '../../../data/models/product_model.dart';
import '../../../data/repositories/product_repository.dart';

class ProductController extends GetxController {
  var products = <Product>[].obs;
  var isLoading = false.obs;
  final ProductRepository repository;

  final picker = ImagePicker();

  ProductController({required this.repository});

  @override
  void onInit() {
    super.onInit();
    loadProducts();
  }

  void loadProducts() {
    products.value = repository.fetchProducts();
  }

  Future<void> addProduct(
      String name, String description, double price, File image) async {
    final product = Product(
      id: Uuid().v4(),
      name: name,
      description: description,
      price: price,
      imagePath: image.path,
    );

    repository.addProduct(product);
    loadProducts();
  }

  Future<File?> pickImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      return File(pickedFile.path);
    } else {
      Get.snackbar('Error', 'No image selected', snackPosition: SnackPosition.BOTTOM);
      return null;
    }
  }

  void clearAllProducts() {
    repository.clearProducts();
    loadProducts();
  }

  Future<void> shareProduct(Product product) async {
    final file = File(product.imagePath);
    // ignore: unused_local_variable
    final bytes = await file.readAsBytes();

    await FlutterShare.share(
      title: 'Check out this product',
      text:
          'Product: ${product.name}\n\nDescription: ${product.description}\n\nPrice: \$${product.price} ',
      chooserTitle: 'Share Product',
    );
  }
}
