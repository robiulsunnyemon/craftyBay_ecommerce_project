
import 'package:craftybay/presentation/state_holders/slider_controller.dart';
import 'package:get/get.dart';
import 'presentation/state_holders/bottom_nav_controller.dart';

class ControllerBinder extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<BottomNavController>(() => BottomNavController());
    Get.lazyPut<HomeSliderController>(() => HomeSliderController());

  }

}