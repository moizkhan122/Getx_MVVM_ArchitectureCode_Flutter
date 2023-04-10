
import 'dart:ffi';

import 'package:flutter_application_1/data/responce/Status.dart';
import 'package:flutter_application_1/model/UserListModel/UserListModel.dart';
import 'package:flutter_application_1/repository/UserListrepository/UserListrepository.dart';
import 'package:get/get.dart';

class HomeViewModel extends GetxController {
  
    final homeUserApi = UserListRepository();

    final rxRequestStatus = Status.LOADING.obs;
    final userlist = UserListModel().obs;
     RxString errorr = ''.obs;

    void setrxRequestStatus(Status _value) => rxRequestStatus.value = _value;
    void setuserlist(UserListModel _value) => userlist.value = _value;
    void setError(String value) => errorr.value = value;
    
    void homeuserApi(){
      
      homeUserApi.homeUserApi().then((value){
        setrxRequestStatus(Status.COMPLETE);
        setuserlist(value);
      }).onError((error, stackTrace){
        setError(error.toString());
        setrxRequestStatus(Status.ERROR);
      });
    }
}