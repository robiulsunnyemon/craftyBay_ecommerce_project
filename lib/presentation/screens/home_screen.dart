import 'package:dhakashop/presentation/utility/app_colors.dart';
import 'package:dhakashop/presentation/utility/assets_path.dart';
import 'package:dhakashop/presentation/widgets/navbar_action_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/category_card_item.dart';
import '../widgets/home_carousel_slider.dart';
import '../widgets/product_card.dart';
import '../widgets/section_header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchTEController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              _buildSearchTextFormField(),
              const SizedBox(
                height: 16,
              ),
              const HomeCarouselWidget(),
              const SizedBox(
                height: 16,
              ),
              SectionHeader(
                title: "All Category",
                onTap: () {},
              ),
              const SizedBox(
                height: 16,
              ),
              _buildCategoryItemSizedBox(),
              const SizedBox(
                height: 8,
              ),
              SectionHeader(
                title: "Popular",
                onTap: () {},
              ),
              const SizedBox(
                height: 8,
              ),
              _buildProductItemSizedBox(),
              const SizedBox(
                height: 16,
              ),
              SectionHeader(
                title: "Special",
                onTap: () {},
              ),
              const SizedBox(
                height: 8,
              ),
              _buildProductItemSizedBox(),
              const SizedBox(
                height: 16,
              ),
              SectionHeader(
                title: "New",
                onTap: () {},
              ),
              const SizedBox(
                height: 8,
              ),
              _buildProductItemSizedBox(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryItemSizedBox() {
    return SizedBox(
      height: 120,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const CategoryCardItem();
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 16,
          );
        },
        itemCount: 8,
      ),
    );
  }

  Widget _buildProductItemSizedBox() {
    return SizedBox(
      height: 190,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const ProductCard();
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 8,
          );
        },
        itemCount: 8,
      ),
    );
  }

  Widget _buildSearchTextFormField() {
    return TextFormField(
      controller: _searchTEController,
      cursorColor: Colors.black,
      cursorHeight: 17,
      decoration: InputDecoration(
        fillColor: Colors.grey.shade200,
        filled: true,
        hintText: "Search",
        prefixIcon: const Icon(Icons.search),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8)),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: SvgPicture.asset(AssetsPath.appNavLogoSvg),
      actions: [
        BuildNavBarActionButton(
          icon: Icons.person,
          onTap: () {},
        ),
        const SizedBox(
          width: 8,
        ),
        BuildNavBarActionButton(
          icon: Icons.call,
          onTap: () {},
        ),
        const SizedBox(
          width: 8,
        ),
        BuildNavBarActionButton(
          icon: Icons.notifications_active_outlined,
          onTap: () {},
        ),
        const SizedBox(
          width: 8,
        ),
      ],
    );
  }
}


