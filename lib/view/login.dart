
import 'package:flutter/material.dart';
import 'package:flutter_application_1/res/components/roundedButton.dart';
import 'package:flutter_application_1/utills/utilss.dart';
import 'package:flutter_application_1/view_model/Controller/login/LoginViewModel.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
   LoginView({super.key});

  final loginViewModel = Get.put(LoginViewModel());

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Form(
              child: Builder(
                builder: (context) => Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 20,),
                  TextFormField(
                    validator: loginViewModel.emailVerifi,
                    focusNode: loginViewModel.emailFocus.value,
                    keyboardType: TextInputType.emailAddress,
                    controller: loginViewModel.emailControler.value,
                    decoration:const InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      labelText: "Email",
                      hintText: "Email",
                      ),
                      onFieldSubmitted: (value){
                        Utills.fieldFocusChange(context, loginViewModel.emailFocus.value, loginViewModel.passFocus.value);
                      },
                  ),
                  SizedBox(height: 20,),
                 Obx(() => TextFormField(
                  validator: loginViewModel.passVerifi,
                    focusNode: loginViewModel.passFocus.value,
                    obscureText:loginViewModel.isSellected.value,
                    controller: loginViewModel.passControler.value,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      labelText: "pass",
                      hintText: "password",
                      suffixIcon: InkWell(
                        onTap: (){
                          loginViewModel.isselected();
                        },
                        child: Icon(
                          loginViewModel.isSellected.value ? Icons.visibility_off :
                          Icons.visibility))
                      ),  
                  ),),
                    const SizedBox(height: 40,),
                  RoundedButton(
                    title: "Login",  
                    onpress: (){
                      loginViewModel.isLoginIn(context);
                      //  if(loginViewModel.isLoginIn(context)){
                      //   Utills.toastmessage("form is validate");
                      //  }
                      // loginViewModel.isLoginIn(context);
                      // if (loginViewModel.emailControler.value.text.isEmpty) {
                      //   Utills.toastmessage("Enter email");
                      // } else if(loginViewModel.passControler.value.text.isEmpty){
                      //   Utills.toastmessage("Enter password");
                      // }else if(loginViewModel.passControler.value.text.length < 6){
                      //   Utills.toastmessage("password length must be above 6");
                      // }else{
                      //   // dynamic data = {
                      //   //   'email': emailControler.text.toString(),
                      //   //   'password': passControler.text.toString()
                      //   // };
                      //   // dynamic data = {
                      //   //   'email': "eve.holt@reqres.in",
                      //   //   'password': "cityslicka",
                      //   // };
                      //  // myloginData.loginApi(data, context);
                      //  // Utills.toastmessage("Api hit");
                      // }
                    },
                    //loading: myloginData.loading,
                    ),
                    SizedBox(height: 30),
                    InkWell(
                      onTap: (){
                        //Navigator.pushNamed(context, Routes_names.signUp_screen);
                      },
                      child: Text("Dont have an account? SignUp",style: TextStyle(fontSize: 18,color: Colors.green),)),
                ],),
)            ),
          )),
      )
    );
  }
}