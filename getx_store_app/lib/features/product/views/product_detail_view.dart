import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/models/product_model.dart';
import '../controllers/product_controller.dart';
import '../widgets/product_info_card.dart';

class ProductDetailView extends StatelessWidget {
  final ProductController controller = Get.find();
  ProductDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    final Product product = Get.arguments;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white12,
        surfaceTintColor: Colors.white,
        elevation: 0,
      ),
      bottomNavigationBar: CheckoutButton(product: product),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 45.0, left: 10.0, right: 13.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    product.name,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      Text('4.8',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          )),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ProductInfoCard(),
                    SizedBox(
                      width: 5.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.blue.withOpacity(0.1)),
                      height: 360,
                      width: 270,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.file(
                            File(product.imagePath),
                            width: double.infinity,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 30.0,
                  left: 10.0,
                  right: 10.0,
                ),
                child: Text(product.description,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    )),
              ),
              SizedBox(height: 20),
              IconButton(
                icon: Icon(Icons.share),
                onPressed: () {
                  controller.shareProduct(product);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CheckoutButton extends StatelessWidget {
  const CheckoutButton({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 65,
            height: 65,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13), color: Colors.white),
            child: Icon(
              Icons.favorite_outline,
              size: 35,
              color: const Color.fromARGB(255, 37, 37, 37),
            ),
          ),
          Container(
              width: 270,
              height: 65,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13), color: Colors.blue),
              child: Center(
                  child: Text(
                'Buy Now \$${product.price}',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ))),
        ],
      ),
    );
  }
}
