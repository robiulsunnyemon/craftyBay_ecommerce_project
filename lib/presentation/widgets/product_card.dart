import 'package:flutter/material.dart';

import '../utility/app_colors.dart';
import '../utility/assets_path.dart';

class ProductCard extends StatelessWidget {
  final bool showAddToWishlist;
  const ProductCard({
    super.key,
    this.showAddToWishlist = true,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      surfaceTintColor: Colors.white,
      child: SizedBox(
        width: 130,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              width: 130,
              decoration: BoxDecoration(
                color: AppColors.primaryColor.withOpacity(.2),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Image.asset(AssetsPath.productDummyPng),
            ),
            Container(
              padding: const EdgeInsets.only(left: 8, right: 4),
              child: Column(
                children: [
                  const Text(
                    "New Year Special Shoe 30",
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 13,
                        overflow: TextOverflow.ellipsis,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Wrap(
                        children: [
                          Text(
                            "\$",
                            style: TextStyle(
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            "100",
                            style: TextStyle(
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      const Wrap(
                        children: [
                          Icon(
                            Icons.star_border,
                            color: Colors.amber,
                            size: 20,
                          ),
                          Text(
                            "4.8",
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      _buildVisibilityWishlist()
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Visibility _buildVisibilityWishlist() {
    return Visibility(
        visible: showAddToWishlist,
        replacement: const GetIconButton(
          icon: Icons.delete_outlined,
        ),
        child: const GetIconButton(icon: Icons.favorite_outline_outlined));
  }
}

class GetIconButton extends StatelessWidget {
  final IconData icon;
  const GetIconButton({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      color: AppColors.primaryColor,
      child: Padding(
        padding: const EdgeInsets.all(1),
        child: Icon(
          icon,
          color: Colors.white,
          size: 19,
        ),
      ),
    );
  }
}
