
import 'package:flutter_application_1/res/routes/routesNames.dart';
import 'package:flutter_application_1/view/SplashcreenView.dart';
import 'package:flutter_application_1/view/homeView.dart';
import 'package:flutter_application_1/view/login.dart';
import 'package:get/get.dart';

class AppRoutes {

    static approutes() => [
      GetPage(
        name: RoutesName.splashScreen, 
        page: ()=> const SplashScreen(),
        transitionDuration: const Duration(milliseconds: 250),
        transition: Transition.leftToRight
        ),

        GetPage(
        name: RoutesName.loginScreen, 
        page: ()=> LoginView(),
        transitionDuration: const Duration(milliseconds: 250),
        transition: Transition.leftToRight
        ),

        GetPage(
        name: RoutesName.homeView, 
        page: ()=> const HomeView(),
        transitionDuration: const Duration(milliseconds: 250),
        transition: Transition.leftToRight
        ),
    ];
}