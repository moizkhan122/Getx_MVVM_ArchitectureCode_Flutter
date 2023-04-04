
import 'package:flutter_application_1/data/responce/Status.dart';

class ApiResponce<T> {  

    Status? status;
    T? data;
    String? message;

    ApiResponce(this.status, this.data, this.message);

    ApiResponce.LOADING() : status = Status.LOADING;

    ApiResponce.COMPLETED(this.data) : status = Status.COMPLETE;
    
    ApiResponce.ERROR(this.message) : status = Status.ERROR;

    String toString(){
      return "status : $status \n Message : $message \n Data : $data"; 
    }
    
  }