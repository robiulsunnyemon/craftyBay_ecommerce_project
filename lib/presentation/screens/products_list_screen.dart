import 'package:dhakashop/presentation/widgets/product_card.dart';
import 'package:flutter/material.dart';

class ProductsListScreen extends StatelessWidget {
  final String categoryName;
  const ProductsListScreen({super.key, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          categoryName,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: .75),
          itemBuilder: (context, index) {
            return const FittedBox(child: ProductCard());
          },
          itemCount: 15,
        ),
      ),
    );
  }
}
