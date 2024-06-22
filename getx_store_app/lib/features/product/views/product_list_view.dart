import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/product_controller.dart';
import '../widgets/custom_banner.dart';
import '../widgets/custom_category_list.dart';
import '../widgets/custom_product_card.dart';
import '../widgets/custom_textfield.dart';

class ProductListView extends StatelessWidget {
  final ProductController controller = Get.find();

  ProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white12,
        surfaceTintColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_outlined),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 19.0, top: 30.0, bottom: 19.0),
              child: Text(
                'Hi, David 🛒',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: MyTextField(
                      prefixIcon: Icon(Icons.search_outlined),
                      hintText: 'Search',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Container(
                    width: 55,
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue.withOpacity(0.1),
                    ),
                    child: Icon(Icons.menu),
                  ),
                ),
              ],
            ),
            Center(
                child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 30),
              child: CustomBanner(),
            )),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Food Categories',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            CustomCategoryList(),
            SizedBox(
              height: 35.0,
            ),
            Obx(() {
              if (controller.isLoading.value) {
                return const Center(child: CircularProgressIndicator());
              } else {
                return SizedBox(
                  height: 260,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: controller.products.length,
                    itemBuilder: (context, index) {
                      final product = controller.products[index];
                      return CustomProductCard(product: product);
                    },
                  ),
                );
              }
            }),
          ],
        ),
      ),
    );
  }
}