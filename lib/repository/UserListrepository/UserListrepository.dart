
import 'package:flutter_application_1/data/network/NetworkApiServices.dart';
import 'package:flutter_application_1/model/UserListModel/UserListModel.dart';
import 'package:flutter_application_1/res/AppUrls/AppUrls.dart';

class UserListRepository {

    final userApi = NetworkApiServices();

    Future<UserListModel> homeUserApi()async{

      dynamic responce =await userApi.getGetApiResponce(
        AppUrl.userListUrl);
        return UserListModel.fromJson(responce);
    }
}