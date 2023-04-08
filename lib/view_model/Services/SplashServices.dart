

import 'dart:async';

import 'package:flutter_application_1/res/routes/routesNames.dart';
import 'package:get/get.dart';

class SplashServices {
  
  void isLogin(){

    Timer(const Duration(seconds: 3),
    () => Get.toNamed(RoutesName.loginScreen),
    );
  }
}