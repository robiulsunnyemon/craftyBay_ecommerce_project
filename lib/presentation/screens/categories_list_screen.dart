import 'package:dhakashop/presentation/state_holders/bottom_nav_controller.dart';
import 'package:dhakashop/presentation/widgets/category_card_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoriesListScreen extends StatelessWidget {
  const CategoriesListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Categories"),
      ),
      body: PopScope(
        canPop: false,
        onPopInvokedWithResult:(didPop, result) {
          Get.find<BottomNavController>().backToHome;
        } ,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, childAspectRatio: .75),
            itemBuilder: (context, index) {
              return const FittedBox(child: CategoryCardItem());
            },
            itemCount: 15,
          ),
        ),
      ),
    );
  }
}
