
import 'package:flutter/material.dart';
import 'package:flutter_application_1/res/assets/imageAssets.dart';
import 'package:flutter_application_1/utills/utilss.dart';
import 'package:flutter_application_1/view_model/Services/SplashServices.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  SplashServices splashServices = SplashServices();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashServices.isLogin();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('email_hint'.tr),),
      body: Image(image: AssetImage(ImageAssets.splashScreen)),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: (){
          Utills.toastmessage("Moiz");
          Utills.snackBar('hello', 'moiz Cham');
        },
        ),
    );
  }
}