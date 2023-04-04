
class AppExceptions implements Exception {

    final _messgae;
    final _prefix;

    AppExceptions([this._messgae, this._prefix]);

    String toString(){
      return '$_messgae,$_prefix';
    }
}

class InternetException extends AppExceptions {
    InternetException([String? message]) : super (message, 'No internet Connection');
}

class RequestTimeOut extends AppExceptions {
    RequestTimeOut([String? message]) : super (message, 'Request Time Out');
}

class ServerError extends AppExceptions {
    ServerError([String? message]) : super (message, ' Internal ServerError');
}

class InvalidUrlException extends AppExceptions {
    InvalidUrlException ([String? message]) : super (message, 'Invalid Url Exception');
}

class FetchDataException extends AppExceptions {
    FetchDataException ([String? message]) : super (message, '');
}