import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/product/controllers/bottom_navbar_controller.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    // instance of the NavigtionController
    final controller = Get.put(BottomNavController());

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          backgroundColor: Colors.white.withOpacity(0.1),
          indicatorColor: Colors.blue.withOpacity(0.1),
        
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home_outlined), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.favorite_outline), label: 'Favourite'),
            NavigationDestination(icon: Icon(Icons.add_box_outlined), label: 'Add'),
            NavigationDestination(icon: Icon(Icons.person_outline), label: 'profile'),
          ],
          ),
      ),
        body: Obx(
          () => controller.screens[
            controller.selectedIndex.value
          ],
        ),
    );
  }
}