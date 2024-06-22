import 'package:get_storage/get_storage.dart';

import '../models/product_model.dart';

class ProductRepository {
  final box = GetStorage();

  List<Product> fetchProducts() {
    List<dynamic> storedProducts = box.read('products') ?? [];
    return storedProducts.map((item) => Product.fromJson(item)).toList();
  }

  void addProduct(Product product) {
    List<Product> currentProducts = fetchProducts();
    currentProducts.add(product);
    box.write('products', currentProducts.map((item) => item.toJson()).toList());
  }

  void clearProducts() {
    box.erase();
  }
}
