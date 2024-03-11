import 'package:get/get.dart';
import 'package:keep_track_project_scube/app/routes/app_pages.dart';

import '../../../data/remote/model/project_details_model.dart';
import '../../../data/remote/repository/project_details_repository.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  List<ProjectDetailsModel> projectList = <ProjectDetailsModel>[].obs;
  List<String> projectIdList = <String>[].obs;
  final isLoading = false.obs;


  @override
  void onInit() {
    super.onInit();
    getAllProject();
  }


  Future getAllProject() async{

    dynamic response = await GetAllProject().getAllProject();

    projectList = response;

    /// print("***** Home Controller ***********${projectList.length}**************");
    projectIdList.clear();
    for(int i=0; i<projectList.length; i++){
      projectIdList.add(projectList[i].id.toString());
    }
    Get.toNamed(Routes.HOME);
    isLoading(true);
  }


}
