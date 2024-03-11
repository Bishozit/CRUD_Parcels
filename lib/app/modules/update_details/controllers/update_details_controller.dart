import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keep_track_project_scube/app/modules/home/controllers/home_controller.dart';
import 'package:keep_track_project_scube/app/routes/app_pages.dart';

import '../../../data/remote/repository/update_details_repository.dart';

class UpdateDetailsController extends GetxController {
  //TODO: Implement UpdateDetailsController


  final projectIdController = TextEditingController().obs;
  final startDateController = TextEditingController().obs;
  final endDateController = TextEditingController().obs;
  final projectNameController = TextEditingController().obs;
  final projectUpdateController = TextEditingController().obs;
  final assignedEngineerController = TextEditingController().obs;
  final assignedTechnicianController = TextEditingController().obs;
  final index = 0.obs;
  final homeController = Get.put(HomeController());
  final isLoading =false.obs;
  @override
  void onInit() {
    super.onInit();
    index.value = Get.arguments[0];
    if (kDebugMode) {
      print("******Update Controller Argument: $index *****************");
    }
    projectIdController.value.text = homeController.projectList[index.value].id.toString();
    startDateController.value.text = homeController.projectList[index.value].startDate.toString();
    endDateController.value.text = homeController.projectList[index.value].endDate.toString();
    projectNameController.value.text = homeController.projectList[index.value].projectName.toString();
    projectUpdateController.value.text = homeController.projectList[index.value].projectUpdate.toString();
    assignedEngineerController.value.text = homeController.projectList[index.value].assignedEngineer.toString();
    assignedTechnicianController.value.text = homeController.projectList[index.value].assignedTechnician.toString();

    isLoading(true);

  }


  Future updateDetails()async{
    final response = await UpdateDetails().updateDetails(
        projectIdController.value.text,
        projectNameController.value.text,
        startDateController.value.text,
        endDateController.value.text,
        projectUpdateController.value.text,
        assignedEngineerController.value.text,
        assignedTechnicianController.value.text
    );
      if(response.isNotEmpty) {
        Get.snackbar(
          'Project: ${projectIdController.value.text}',
          "Updated Successfully!!",
          snackPosition: SnackPosition.TOP,
          colorText: Colors.white,
          backgroundColor: Colors.blue.shade700,
          duration: const Duration(seconds: 5),
        );
      }
      Get.offAllNamed(Routes.HOME);
    }
}
  




