import 'dart:convert';

import 'package:craftybay/data/models/network_response.dart';
import 'package:craftybay/presentation/screens/email_verification_screen.dart';
import 'package:get/get.dart ' as Getx;
import 'package:http/http.dart' as http;

class NetworkCaller{

  static Future<NetworkResponse> getRequest( String url) async {

    try{
       http.Response response =await http.get(Uri.parse(url));
      print(response.body.toString());
      if(response.statusCode==200){
        final decodedData=jsonDecode(response.body);
        print(decodedData.toString());
        return NetworkResponse(
          body: decodedData,
          isSuccess: true,
          statusCode: response.statusCode
        );
      }else if(response.statusCode==401){
        _moveToEmailVerificationScreen();
        return NetworkResponse(
            isSuccess: false,
            statusCode: response.statusCode
        );
      }else{
        return NetworkResponse(
            isSuccess: false,
            statusCode: response.statusCode,
        );
      }

    }catch(e){
      return NetworkResponse(
        isSuccess: false,
        statusCode: -1,
        errorMessage: e.toString()
      );
    }

  }


  Future<NetworkResponse> postRequest( String url,Map<String,dynamic> body) async {

    try{
       http.Response response =await http.post(
        Uri.parse(url),
        body: body,
        headers: {"accept":"application/json"}
      );
      if(response.statusCode==200){
        final decodedData=jsonDecode(response.body);
        return NetworkResponse(
            body: decodedData,
            isSuccess: true,
            statusCode: response.statusCode
        );
      }else if(response.statusCode==401){
        return NetworkResponse(
            isSuccess: false,
            statusCode: response.statusCode
        );
      }else{
        return NetworkResponse(
          isSuccess: false,
          statusCode: response.statusCode,
        );
      }

    }catch(e){
      return NetworkResponse(
          isSuccess: false,
          statusCode: -1,
          errorMessage: e.toString()
      );
    }

  }


  static _moveToEmailVerificationScreen(){
    Getx.Get.to(()=>const EmailVerificationScreen());
  }

}