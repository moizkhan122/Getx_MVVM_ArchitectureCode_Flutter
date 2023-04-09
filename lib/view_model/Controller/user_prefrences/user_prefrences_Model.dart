
import 'package:flutter_application_1/model/LoginResponceModel/LoginResponceModel.dart';
import 'package:shared_preferences/shared_preferences.dart';

//all work about token code for not re attend login 
class UserPrefrences{

    Future<bool> saveUser(LoginTokenModel responceModelToken)async{
       SharedPreferences sp = await SharedPreferences.getInstance();
      sp.setString('token', responceModelToken.token.toString());
      return true;
    }

    Future<LoginTokenModel> getUser()async{
       SharedPreferences sp = await SharedPreferences.getInstance();
      String? token = sp.getString('token');
      return LoginTokenModel(
        token: token
      );
    }

     Future<bool> removeUser()async{
       SharedPreferences sp = await SharedPreferences.getInstance();
      sp.clear();
      return true;
    }
}