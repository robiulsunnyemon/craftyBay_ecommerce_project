import 'package:dhakashop/presentation/widgets/counting_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../state_holders/bottom_nav_controller.dart';
import '../utility/app_colors.dart';
import '../utility/assets_path.dart';

class CartProductItem extends StatelessWidget {
  const CartProductItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              AssetsPath.productDummyPng,
              width: 80,
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
                child: Column(
              children: [
                _buildCartNameHeadingPart(),
                const SizedBox(height: 15,),
                _buildCartPriceCountingPart(),
              ],
            ))
          ],
        ),
      ),
    );
  }

  Widget _buildCartPriceCountingPart() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "\$100",
          style: TextStyle(
              color: AppColors.primaryColor, fontWeight: FontWeight.w600),
        ),
        CountingItemWidget(),
      ],
    );
  }

  Widget _buildCartNameHeadingPart() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "New Year Special Shoe",
              maxLines: 1,
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.ellipsis,
                  fontSize: 16),
            ),
            Text(
              "Color: Red, Size: x",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.delete_outlined),
        ),
      ],
    );
  }
}
