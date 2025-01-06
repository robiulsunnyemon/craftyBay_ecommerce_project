import 'package:craftybay/data/models/network_response.dart';
import 'package:craftybay/data/network_caller/network_caller.dart';
import 'package:craftybay/data/utility/urls.dart';
import 'package:get/get.dart%20';

import '../../data/models/slider_list_model.dart';

class HomeSliderController extends GetxController{
  bool _isProgress=false;
  String _errorMessage=" ";
  List<SliderData> sliderList=[];

  Future<bool> getSlider()async{
    _isProgress=true;
    bool isSuccess=false;
    update();
    NetworkResponse response=await NetworkCaller.getRequest(Urls.homeSliderUrl);
    if(response.isSuccess){
      sliderList=SliderModel.fromJson(response.body).sliderList ?? [];
    }else{
      _errorMessage=response.errorMessage;
    }
    _isProgress =false;
    update();
    return isSuccess;
  }
  
}