
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/res/colors/colors.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({super.key,
   required this.title, 
   this.loading = false, 
   required this.onpress});

  final String title;
  final bool loading;
  final VoidCallback onpress;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Container(
        height: 50,
        width: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.greenColor),
        child: Center(child:loading ?  CircularProgressIndicator() : Text(title,style:const TextStyle(fontSize: 30,color: AppColors.blackColor),)),
      ),
    );
  }
}