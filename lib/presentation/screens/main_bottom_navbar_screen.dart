import 'package:craftybay/presentation/state_holders/slider_controller.dart';
import 'package:craftybay/presentation/screens/home_screen.dart';
import 'package:craftybay/presentation/utility/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../state_holders/bottom_nav_controller.dart';
import 'cart_list_screen.dart';
import 'categories_list_screen.dart';
import 'wish_list_screen.dart';


class MainBottomNavBar extends StatefulWidget {
  @override
  State<MainBottomNavBar> createState() => _MainBottomNavBarState();
}

class _MainBottomNavBarState extends State<MainBottomNavBar> {
  final BottomNavController controller = Get.find<BottomNavController>();
  final HomeSliderController homeSliderController = Get.find<HomeSliderController>();



  final List<Widget> screen = [
    const HomeScreen(),
    const CategoriesListScreen(),
    const CartListScreen(),
    const WishListScreen(),
  ];

  @override
  void initState() {
    super.initState();
    homeSliderController.getSlider();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => screen[controller.selectedIndex.value]),
      bottomNavigationBar: Obx(
            () => BottomNavigationBar(
          currentIndex: controller.selectedIndex.value,
          onTap: controller.changeTab,
          selectedItemColor: AppColors.primaryColor,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard_outlined),
              label: 'Categories',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline_outlined),
              label: 'Wishlist',
            ),
          ],
        ),
      ),
    );
  }
}
