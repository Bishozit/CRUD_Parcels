import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../model/project_details_model.dart';


String projectDetailsUrl = "https://scubetech.xyz/projects/dashboard/all-project-elements/";


class GetAllProject{

  Future<List<ProjectDetailsModel>> getAllProject() async{

    if (kDebugMode) {
      print("###################### Before Api Call #############################");
    }
    final headers = {'Content-Type': 'application/json'};
    final url = Uri.parse(projectDetailsUrl);
    final response = await http.get(url, headers: headers);
    if (kDebugMode) {
      print("###################### After Api Call #############################");
    }

    return projectDetailsModelFromJson(response.body);
  }

}