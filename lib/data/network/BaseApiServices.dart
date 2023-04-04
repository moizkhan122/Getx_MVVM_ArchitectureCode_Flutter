
  abstract class BaseApiService{

    Future<dynamic> getGetApiResponce(String url);
    Future<dynamic> getPostApiResponce(String url,dynamic Data);
  }