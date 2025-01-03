import 'package:dhakashop/controller_binder.dart';
import 'package:dhakashop/presentation/screens/email_verification_screen.dart';
import 'package:dhakashop/presentation/screens/home_screen.dart';
import 'package:dhakashop/presentation/screens/main_bottom_navbar_screen.dart';
import 'package:dhakashop/presentation/screens/splash_screen.dart';
import 'package:dhakashop/presentation/utility/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DhakaShop extends StatelessWidget {
   const DhakaShop({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      home:  MainBottomNavBar(),
      initialBinding: ControllerBinder(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: AppColors.primaryColor,
        progressIndicatorTheme:const ProgressIndicatorThemeData(
          color: AppColors.primaryColor
        ),
        textTheme: _buildTextTheme(),
        inputDecorationTheme: _buildInputDecorationTheme(),
        elevatedButtonTheme: _buildElevatedButtonThemeData(),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: AppColors.primaryColor,
          )
        )
      ),
    );
  }

  ElevatedButtonThemeData _buildElevatedButtonThemeData() {
    return ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            fixedSize: const Size.fromWidth(double.maxFinite),
            backgroundColor: AppColors.primaryColor,
            foregroundColor: Colors.white,
            textStyle:const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4)
            ),
            padding: const EdgeInsets.all(12)
        ),
      );
  }

  TextTheme _buildTextTheme() {
    return const TextTheme(
        headlineLarge: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: Colors.black
        ),
        headlineSmall: TextStyle(
            fontSize: 16,
            color: Colors.blueGrey
        ),
      );
  }

  InputDecorationTheme _buildInputDecorationTheme() {
    return InputDecorationTheme(
        border: _buildOutlineInputBorder,
        enabledBorder: _buildOutlineInputBorder,
        focusedBorder: _buildOutlineInputBorder,
        errorBorder:const OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.red,
            )
        ),
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontWeight:FontWeight.w400,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        )
      );
  }

  final OutlineInputBorder _buildOutlineInputBorder = const OutlineInputBorder(
    borderSide: BorderSide(
      color: AppColors.primaryColor
    )
  );
}
