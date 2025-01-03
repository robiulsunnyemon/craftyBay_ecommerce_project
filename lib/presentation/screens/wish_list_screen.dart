import 'package:dhakashop/presentation/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../state_holders/bottom_nav_controller.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Wishlist",
        ),
      ),
      body: PopScope(
        canPop: false,
        onPopInvokedWithResult:(didPop, result) {
          Get.find<BottomNavController>().backToHome(0);
        } ,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: .75),
            itemBuilder: (context, index) {
              return const FittedBox(child: ProductCard(showAddToWishlist: false,));
            },
            itemCount: 15,
          ),
        ),
      ),
    );
  }
}
