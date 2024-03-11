import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keep_track_project_scube/app/data/remote/repository/add_element_repository.dart';
import 'package:keep_track_project_scube/app/modules/home/controllers/home_controller.dart';
import 'package:keep_track_project_scube/app/routes/app_pages.dart';

class AddElementController extends GetxController {
  //TODO: Implement AddElementController
  @override
  void onInit() {
    super.onInit();
    clearValue();
  }


  clearValue(){
    projectNameController.value.text = "";
    projectUpdateController.value.text = "";
    startDateController.value.text = "";
    endDateController.value.text = "";
    assignedEngineerController.value.text = "";
    assignedTechnicianController.value.text = "";
  }

  final projectNameController = TextEditingController().obs;
  final startDateController = TextEditingController().obs;
  final endDateController = TextEditingController().obs;
  final projectUpdateController = TextEditingController().obs;
  final assignedEngineerController = TextEditingController().obs;
  final assignedTechnicianController = TextEditingController().obs;


  final message = "".obs;
  Future addElement() async{
    final response = await AddElement().addElement(
       // projectName, startTime, endTime, projectUpdate, assignedEngineer, assignedTechnician
        projectNameController.value.text,
        startDateController.value.text,
        endDateController.value.text,
      projectUpdateController.value.text,
      assignedEngineerController.value.text,
      assignedTechnicianController.value.text
    );

    message.value = response;

    if (kDebugMode) {
      print(message.value);
    }
    if(message.value.contains("Project element created successfully")){
      message.value = "Project Created Successfully";
      Get.snackbar(
        'Are Shera!',
        message.value.toString(),
        snackPosition: SnackPosition.TOP,
        colorText: Colors.white,
        backgroundColor: Colors.blue.shade900,
        duration: const Duration(seconds: 5),
      );
      Get.put(HomeController().getAllProject());
      Get.offAllNamed(Routes.HOME);
    }else{
      Get.snackbar(
        'Sorry!',
        message.value.toString(),
        snackPosition: SnackPosition.TOP,
        colorText: Colors.white,
        backgroundColor: Colors.red.shade900,
        duration: const Duration(seconds: 5),
      );
    }
  }


}
