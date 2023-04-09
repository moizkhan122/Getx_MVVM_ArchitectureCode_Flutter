

import 'dart:async';

import 'package:flutter_application_1/res/routes/routesNames.dart';
import 'package:flutter_application_1/view_model/Controller/user_prefrences/user_prefrences_Model.dart';
import 'package:get/get.dart';


class SplashServices {
  
  void isLogin(){

    UserPrefrences userPrefrences = UserPrefrences();

   userPrefrences.getUser().then((value){
    if (value.token!.isEmpty || value.token == 'null') {
      Timer(const Duration(seconds: 3),
    () => Get.toNamed(RoutesName.loginScreen),
    );
    }else{
      Timer(const Duration(seconds: 3),
    () => Get.toNamed(RoutesName.homeView),
    );
    }
   }).onError((error, stackTrace){

   });
  }
}