import 'package:carousel_slider/carousel_slider.dart';
import 'package:dhakashop/presentation/utility/assets_path.dart';
import 'package:flutter/material.dart';
import '../utility/app_colors.dart';
import 'counting_item.dart';

class ProductImageCarouselWidget extends StatefulWidget {
  const ProductImageCarouselWidget({
    super.key,
  });

  @override
  State<ProductImageCarouselWidget> createState() =>
      _ProductImageCarouselWidgetState();
}

class _ProductImageCarouselWidgetState
    extends State<ProductImageCarouselWidget> {
  final ValueNotifier<int> _selectedPageIndex = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                  height: 220,
                  viewportFraction: 1,
                  onPageChanged: (index, _) {
                    _selectedPageIndex.value = index;
                  }),
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      padding:const EdgeInsets.all(20),
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                      ),
                      child: Center(
                        child: Image.asset(AssetsPath.productDummyPng,),
                      )
                    );
                  },
                );
              }).toList(),
            ),
            Positioned(
              bottom: 10,
              left: 0,
              right: 0,
              child: ValueListenableBuilder(
                valueListenable: _selectedPageIndex,
                builder: (context, value, child) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int i = 0; i < 5; i++)
                        Container(
                          height: 10,
                          width: 10,
                          margin: const EdgeInsets.symmetric(horizontal: 1.5),
                          decoration: BoxDecoration(
                              color: i == value
                                  ? AppColors.primaryColor
                                  : Colors.white,
                              border: Border.all(color: Colors.white, width: 1),
                              borderRadius: BorderRadius.circular(100)),
                        ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
