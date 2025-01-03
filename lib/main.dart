import 'package:dhakashop/app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'presentation/state_holders/bottom_nav_controller.dart';

void main() {
  Get.lazyPut<BottomNavController>(() => BottomNavController());
  runApp( DhakaShop());
}
