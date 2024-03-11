import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:keep_track_project_scube/app/modules/login/controllers/login_controller.dart';

import '../../../modules/home/controllers/home_controller.dart';
import '../model/project_details_model.dart';
import '../model/show_all_parcel_model.dart';

final LoginController loginController = Get.put(LoginController());


String token = loginController.token.toString();

String allParcelUrl = "https://demo.zfcourier.xyz/api/v/1.0.0/parcels?page=1&shopId=shop-123";


class GetAllParcel{

  Future<ShowAllParcelModel> getAllParcel() async{

    if (kDebugMode) {
      print("###################### Before Api Call #############################");
      print(token);
    }
    final headers = {'Content-Type': 'application/json', "Authorization": "Bearer $token"};
    final url = Uri.parse(allParcelUrl);
    final response = await http.get(url, headers: headers);
    if (kDebugMode) {
      print("###################### After Api Call #############################");
    }

    return showAllParcelModelFromJson(response.body);
  }

}