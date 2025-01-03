import 'package:get/get.dart';

class BottomNavController extends GetxController {
  // Current selected index
  var selectedIndex = 0.obs;
  var productCartNumber = 0.obs;

  // Method to update the selected index
  void changeTab(int index) {
    selectedIndex.value = index;
  }

  void backToHome(int index) {
    selectedIndex.value = 0;
  }

  void incrementCartProduct(){
    productCartNumber++;
  }


  void decrementCartProduct() {
    if (productCartNumber > 0) {
      productCartNumber--;
    }
  }
}
