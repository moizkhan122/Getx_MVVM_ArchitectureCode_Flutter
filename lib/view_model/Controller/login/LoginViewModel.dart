

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/LoginResponceModel/LoginResponceModel.dart';
import 'package:flutter_application_1/repository/loginRepository/loginRepository.dart';
import 'package:flutter_application_1/res/routes/routesNames.dart';
import 'package:flutter_application_1/utills/utilss.dart';
import 'package:flutter_application_1/view_model/Controller/user_prefrences/user_prefrences_Model.dart';
import 'package:get/get.dart';

class LoginViewModel extends GetxController {
  
  final  emailControler = TextEditingController().obs;
  final  passControler = TextEditingController().obs;
  final  emailFocus = FocusNode().obs;
  final  passFocus = FocusNode().obs;
  UserPrefrences userPrefrences = UserPrefrences();
  
  final api = LoginRepository();

    void loginApi(){
      Map data = {
        'email' : emailControler.value.text,
        'password' : passControler.value.text
      };
      api.loginApi(data).then((value){
        //saving a token value for one time login of user
        userPrefrences.saveUser(LoginTokenModel.fromJson(value)).then((value){
          Get.toNamed(RoutesName.homeView);
        }).onError((error, stackTrace){

        });
        Utills.snackBar('Api Hits', 'You logged In Succesfull');
      }).onError((error, stackTrace){
        if (kDebugMode) {
          print(error.toString());
        }
        Utills.toastmessage("$error");
      });
    }




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
      if ((Form.of(context).validate())) {
        loginApi();
      }
    }
}