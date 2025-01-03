import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../utility/app_colors.dart';

class HomeCarouselWidget extends StatefulWidget {
  const HomeCarouselWidget({
    super.key,
  });

  @override
  State<HomeCarouselWidget> createState() => _HomeCarouselWidgetState();
}

class _HomeCarouselWidgetState extends State<HomeCarouselWidget> {
  final ValueNotifier<int> _selectedPageIndex=ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              height: 180.0,
              viewportFraction: 1,
              onPageChanged: (index,_){
                _selectedPageIndex.value=index;
              }
          ),
          items: [1,2,3,4,5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: Text('text $i', style: const TextStyle(fontSize: 16.0),)
                );
              },
            );
          }).toList(),
        ),
        const SizedBox(height: 8,),
        ValueListenableBuilder(
          valueListenable: _selectedPageIndex,
          builder: (context, value, child) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for(int i=0;i<5;i++)
                  Container(
                    height: 10,
                    width: 10,
                    margin:const EdgeInsets.symmetric(horizontal: 1.5),
                    decoration: BoxDecoration(
                        color: i==value? AppColors.primaryColor:null,
                        border: Border.all(color: AppColors.primaryColor,width: 1),
                        borderRadius: BorderRadius.circular(100)
                    ),
                  ),

              ],
            );
          },
        )
      ],
    );
  }
}