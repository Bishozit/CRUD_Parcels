import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../model/login_responce_model.dart';


String loginUrl = "https://demo.zfcourier.xyz/api/v/1.0.0/auth/login";


class LoginRepository{
  Future<LoginResponseModel> login(String? phone, String pass) async{
    var headers = {'Content-Type': 'application/json'};
    var body = jsonEncode(
        {
          "phone": phone,
          "password": pass
        }
    );
    var url = Uri.parse(loginUrl);
    var response = await http.post(url, body: body, headers: headers);
    if (kDebugMode) {
      print("Response Body ***************${response.body}**************");
    }
    return loginResponseModelFromJson(response.body);
  }

}