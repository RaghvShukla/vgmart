import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vgmart/app/modules/cart/views/cart_view.dart';
import 'package:vgmart/app/modules/explore/views/explore_view.dart';
import 'package:vgmart/app/modules/home/views/home_view.dart';
import 'package:vgmart/app/modules/profile/views/profile_view.dart';
import '../controllers/bottombar_controller.dart';

class BottombarView extends GetView<BottombarController> {
  const BottombarView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        body: HomeView(),
        // [
        //   HomeView(),
        //   ExploreView(),
        //   CartView(),
        //   ProfileView(),
        // ][controller.currentIndex.value],
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (index) {
            controller.currentIndex.value = index;
          },
          selectedIndex: controller.currentIndex.value,
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.storefront),
              selectedIcon: Icon(Icons.storefront_rounded),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.local_mall_outlined),
              selectedIcon: Icon(Icons.local_mall),
              label: 'Explore',
            ),
            NavigationDestination(
              icon: Icon(Icons.shopping_cart_outlined),
              selectedIcon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
            NavigationDestination(
              icon: Icon(Icons.person_outline),
              selectedIcon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      );
    });
  }
}
