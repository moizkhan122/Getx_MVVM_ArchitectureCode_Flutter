
import 'package:flutter/material.dart';
import 'package:flutter_application_1/res/colors/colors.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class Utills {

    static void fieldFocusChange(BuildContext context, FocusNode current, FocusNode next){
      current.unfocus();
      FocusScope.of(context).requestFocus(next);
    }

    static toastmessage(String message){
      Fluttertoast.showToast(
        msg: message,
        backgroundColor: AppColors.backGColor,
        gravity: ToastGravity.BOTTOM
        );
    }

    static snackBar(String title, String message){
      Get.snackbar(
        title, 
        message
        );
    }
}