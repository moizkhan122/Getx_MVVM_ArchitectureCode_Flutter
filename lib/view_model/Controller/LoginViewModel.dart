

import 'package:flutter/material.dart';
import 'package:flutter_application_1/utills/utilss.dart';
import 'package:get/get.dart';

class LoginViewModel extends GetxController {
  
  final  emailControler = TextEditingController().obs;
  final  passControler = TextEditingController().obs;
  final  emailFocus = FocusNode().obs;
  final  passFocus = FocusNode().obs;

    RxBool isSellected = true.obs;

  isselected(){
    isSellected.value = !isSellected.value;
  }

  String? emailVerifi(String? value){
                  if(value == null || value.isEmpty){
                    return "Enter Email";
                  }
                  if(!value.contains('@')){
                    return 'please Enter valid email';
                  }
                  else{
                    return null;
                 }
                 
  }
   String? passVerifi(String? value){
                  if(value == null || value.isEmpty){
                    return "Enter PAssword";
                  }
                  if(value.length<6){
                    return 'length should be abouve 6';
                  }
                  else{
                    return null;
                 }
  }

    isLoginIn(BuildContext context){
      if (!(Form.of(context).validate())) {
        return;
      }
      Utills.toastmessage("Login succesfull");
    }
}