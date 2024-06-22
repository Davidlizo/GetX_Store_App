import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/models/product_model.dart';
import '../../routes/app_pages.dart';

class CustomProductCard extends StatelessWidget {
  const CustomProductCard({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(Routes.PRODUCT_DETAIL, arguments: product),
      child: Container(
        width: 200,
        margin: EdgeInsets.symmetric(
            horizontal: 8.0), // Add some spacing between items
        decoration: BoxDecoration(
          color: Colors.blue.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.file(
                        File(product.imagePath),
                        width: 200,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                product.name,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 4.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 13.0),
                  child: Text(
                    '\$ ${product.price.toString()}',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      Text('4.8',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
