import 'package:get/get.dart';
import 'package:getx_store_app/features/product/views/favourite_view.dart';
import 'package:getx_store_app/features/product/views/product_list_view.dart';

import '../views/add_product_view.dart';
import '../views/profile_view.dart';

class BottomNavController extends GetxController {
  // Current index of the bottom navigation bar
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    ProductListView(),
    const FavouriteView(),
    AddProductScreen(),
    ProfileView()
  ];
}
