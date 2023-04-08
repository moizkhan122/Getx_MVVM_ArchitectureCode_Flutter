
import 'package:flutter_application_1/data/network/NetworkApiServices.dart';
import 'package:flutter_application_1/res/AppUrls/AppUrls.dart';

class LoginRepository {

    final loginApiService = NetworkApiServices();

    Future<dynamic> loginApi(dynamic data)async{

      dynamic responce = loginApiService.getPostApiResponce(
        AppUrl.loginApiUrl, data);
        return responce;
    }
}