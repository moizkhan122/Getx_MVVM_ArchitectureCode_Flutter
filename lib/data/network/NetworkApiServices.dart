import 'dart:convert';
import 'dart:io';
import 'package:flutter_application_1/data/AppException.dart';
import 'package:flutter_application_1/data/network/BaseApiServices.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class NetworkApiServices extends BaseApiService{
  
  @override
  Future getGetApiResponce(String url) async{
    dynamic responceJson;
    try {
      final responce = await http.get(Uri.parse(url)).timeout(Duration(seconds: 10));
      responceJson = returnResponce(responce);
    }on SocketException{
      throw InternetException("No Internet Connection");
    } 
    return responceJson;
  }

  @override
  Future getPostApiResponce(String url,dynamic Data) async{
    dynamic responceJson;
    try {
      Response response = await http.post(
        Uri.parse(url),
        body: Data
        ).timeout(Duration(seconds: 10));
      responceJson = returnResponce(response);
    }on SocketException{
      throw InternetException("No Internet Connection");
    } 
    return responceJson;
  }

  dynamic returnResponce(http.Response response){
    switch (response.statusCode) {
      case 200:
          dynamic responceJson = jsonDecode(response.body);
          return responceJson;
      case 400 :
      throw InvalidUrlException(response.statusCode.toString());

      default:
      throw FetchDataException("Error Accoured While Communicating with server"+
      " With Status Code"+ response.statusCode.toString());
    }
  }

}