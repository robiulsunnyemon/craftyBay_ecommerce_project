import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../state_holders/bottom_nav_controller.dart';
import '../utility/app_colors.dart';
import '../utility/assets_path.dart';

class CartProductItem extends StatelessWidget {
  CartProductItem({
    super.key,
  });
  final BottomNavController _controller = Get.find<BottomNavController>();
  @override
  Widget build(BuildContext context) {
    var productNumber = _controller.productCartNumber;
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
                _buildCartPriceCountingPart(productNumber)
              ],
            ))
          ],
        ),
      ),
    );
  }

  Widget _buildCartPriceCountingPart(RxInt productNumber) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "\$100",
          style: TextStyle(
              color: AppColors.primaryColor, fontWeight: FontWeight.w600),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                _controller.decrementCartProduct();
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: AppColors.primaryColor),
                child: const Center(
                    child: Icon(
                  Icons.remove,
                  color: Colors.white,
                  size: 20,
                )),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Obx(
              () => Text(
                "$productNumber",
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.black54),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () {
                _controller.incrementCartProduct();
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: AppColors.primaryColor),
                child: const Center(
                    child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 20,
                )),
              ),
            ),
          ],
        )
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
