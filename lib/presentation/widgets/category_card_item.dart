import 'package:dhakashop/presentation/screens/products_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utility/app_colors.dart';

class CategoryCardItem extends StatelessWidget {
  const CategoryCardItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.to(()=>const ProductsListScreen(categoryName: "Electronics"));
      },
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: AppColors.primaryColor.withOpacity(.1),
                borderRadius: BorderRadius.circular(16)
            ),
            child: const Icon(
              Icons.desktop_windows_outlined,
              size: 40,
              color: AppColors.primaryColor,
            ),
          ),
          const SizedBox(height: 2,),
          const Text("Electronics",
            style: TextStyle(
                color: AppColors.primaryColor,
                fontSize: 16.5,
                fontWeight: FontWeight.w400,
                letterSpacing: .4
            ),
          ),
      
        ],
      ),
    );
  }
}