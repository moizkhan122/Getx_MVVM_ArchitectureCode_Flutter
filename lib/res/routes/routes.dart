
import 'package:flutter_application_1/res/routes/routesNames.dart';
import 'package:flutter_application_1/view/SplashcreenView.dart';
import 'package:flutter_application_1/view/login.dart';
import 'package:get/get.dart';

class AppRoutes {

    static approutes() => [
      GetPage(
        name: RoutesName.splashScreen, 
        page: ()=> SplashScreen(),
        transitionDuration: Duration(milliseconds: 250),
        transition: Transition.leftToRight
        ),

        GetPage(
        name: RoutesName.loginScreen, 
        page: ()=> LoginView(),
        transitionDuration: Duration(milliseconds: 250),
        transition: Transition.leftToRight
        ),
    ];
}