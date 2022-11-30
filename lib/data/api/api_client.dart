import 'package:get/get_connect.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ApiClient extends GetConnect implements GetxService {
  // this class is used to talk to the server
  late String token;
  final String appBaseUrl;
  late Map<String, String> _mainHeaders;

  ApiClient({required this.appBaseUrl}) {
    baseUrl = appBaseUrl;
    timeout = Duration(seconds: 30);
    _mainHeaders = {
      'Content-type': 'application/json; charset = UTF-8',
      'Authorization': 'Bearer $token',
    };
    //when ever you talk to the server you must have header for either the request is get or post api
    // application/json - > this is to tell the server i want a json response from get method
    //                  --> and also it tell the server that i will send the json while doing post api

    // charset = UTF-8 is basically for encoding and decoding
    // Bearer token here token is Bearer type
  }

  // here insted of http client we use Getx client so it will return a Response
  Future<Response> getData(String uri) async {
    try {
      Response response = await get(uri);
      return response;
    } catch (e) {
      return Response(statusCode: 1, statusText: e.toString());
    }
  }
}
