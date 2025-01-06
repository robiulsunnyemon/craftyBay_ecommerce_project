import 'package:craftybay/presentation/state_holders/bottom_nav_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utility/app_colors.dart';
import '../widgets/cart_product_item.dart';

class CartListScreen extends StatelessWidget {
   const CartListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
      ),
      body: PopScope(
          canPop: false,
          onPopInvokedWithResult:(didPop, result) {
            Get.find<BottomNavController>().backToHome(0);
          } ,
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: 55,
                  itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CartProductItem(),
                  );
                },
                ),
              ),
              _buildCheckoutSection()

            ],
          )),
    );
  }

  Container _buildCheckoutSection() {
    return Container(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 40),
              decoration: BoxDecoration(
                color: AppColors.primaryColor.withOpacity(.1),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    children: [
                      Text("Total Price",style: TextStyle(
                        fontSize: 12,
                        color: Colors.black54
                      ),),
                      Text("\$100000.00",style: TextStyle(
                          fontSize: 16,
                          color: AppColors.primaryColor,
                        fontWeight: FontWeight.w500
                      ),),
                    ],
                  ),
                  FittedBox(
                    child: Container(
                      height: 40,
                      width: 100,
                     // padding: const EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(8)
                      ),
                      child: ElevatedButton(
                          onPressed: (){},
                          child: const Text("Checkout")
                      ),
                    ),
                  )
                ],
              ),
            );
  }
}


