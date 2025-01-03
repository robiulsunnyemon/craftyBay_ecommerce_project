
import 'package:get/get.dart';
import 'presentation/state_holders/bottom_nav_controller.dart';

class ControllerBinder extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<BottomNavController>(() => BottomNavController());

  }

}