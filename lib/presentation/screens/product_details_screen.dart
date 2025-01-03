import 'package:flutter/material.dart';

import '../utility/app_colors.dart';
import '../widgets/color_picker.dart';
import '../widgets/counting_item.dart';
import '../widgets/product_image_carousel_slider.dart';
import '../widgets/size_picker.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Details"),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const ProductImageCarouselWidget(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildProductDetailsHeader(),
                        const SizedBox(height: 15,),
                        SizedBox(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Color",
                              style:TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w500,
                                fontSize: 17
                              ),
                              ),
                              const SizedBox(height: 8,),
                              ColorPicker(
                                colors: const [
                                  Colors.black54,
                                  Colors.red,
                                  Colors.greenAccent,
                                  Colors.blue,
                                  Colors.pink,
                                ],
                                onChange: (Color selectedColor){
                                },
                              ),
                              const SizedBox(height: 16,),
                              const Text("Size",
                                style:TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 17
                                ),
                              ),
                              const SizedBox(height: 8,),
                              SizePicker(
                                sizes:  const [
                                "XXL", "XL", "L", "M"
                              ],
                                onSelected: (selectedSized){
                                },
                              ),
                              const SizedBox(height: 16,),
                              _buildDescriptionSection()

                            ],
                          ),
                        )


                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          _buildAddToCartSection()
        ],
      ),
    );
  }

  Widget _buildAddToCartSection() {
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
              Text("Price",style: TextStyle(
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
              width: 120,
              decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(8)
              ),
              child: ElevatedButton(
                  onPressed: (){},
                  child: const Text("Add To Cart")
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildDescriptionSection() {
    return const SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Description",style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54
                            ),),
                            SizedBox(height: 8,),
                            Text('''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. ''',
                              style: TextStyle(
                                color: Colors.black54
                              ),
                            ),
                          ],
                        ),
                      );
  }

  Widget _buildProductDetailsHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Happy New Year Special Deal Save 30%",
                maxLines: 2,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                width: 160,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Wrap(
                      children: [
                        Icon(
                          Icons.star_border_outlined,
                          color: Colors.amber,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          "4.8",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black54),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        "Reviews",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: AppColors.primaryColor),
                      ),
                    ),
                    Card(
                      color: AppColors.primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                      child: const Padding(
                        padding: EdgeInsets.all(3),
                        child: Icon(
                          Icons.favorite_outline_outlined,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        const CountingItemWidget(),
      ],
    );
  }
  
}
