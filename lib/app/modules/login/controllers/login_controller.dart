import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:keep_track_project_scube/app/routes/app_pages.dart';

import '../../../data/remote/model/login_responce_model.dart';
import '../../../data/remote/repository/login_repository.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController

  @override
  void onInit() {
    super.onInit();
  }

  final passController = TextEditingController().obs;
  final phoneController = TextEditingController().obs;
  var passShow = true.obs;
  final loginResponseModel = LoginResponseModel().obs;
  String token = "";


  login() async{
    var response = await LoginRepository().login(
      phoneController.value.text,
      passController.value.text,
    );

    loginResponseModel.value = response;

    token = response.token.toString();


    Get.toNamed(Routes.SHOW_PARCELS);
    /*phoneController.value.clear();
    passController.value.clear();*/


    /*if(response.statusCode == 200){

      *//*loginResponseModel.value = response;
      bToken.$ = "Bearer ${loginResponseModel.value.data!.apiToken!}";
      token.$ = loginResponseModel.value.data!.apiToken!;
      name.$ = loginResponseModel.value.data!.user!.name!;
      email.$ = loginResponseModel.value.data!.user!.userName!;

      token.save();
      token.load();
      bToken.save();
      bToken.load();

      saveValue();
      loadValue();*//*

      Get.toNamed(Routes.SHOW_PARCELS);
      phoneController.value.clear();
      passController.value.clear();
    }*/

  }


}
