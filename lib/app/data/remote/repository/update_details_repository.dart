import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;



class UpdateDetails{

  Future<String> updateDetails(
      String? projectID,
      String? projectName,
      String? startTime,
      String? endTime,
      String? projectUpdate,
      String? assignedEngineer,
      String? assignedTechnician,

      ) async{

    if (kDebugMode) {
      print("###################### Before Api Call #############################");
    }
    final headers = {'Content-Type': 'application/json'};
    final body = jsonEncode(
        {
          "id": projectID,
          "start_date": "2024-02-22",
          "end_date": "2025-02-22",
          "project_name": projectName,
          "project_update": projectUpdate,
          "assigned_engineer": assignedEngineer,
          "assigned_technician": assignedTechnician
        }

    );
    String updateDetailsUrl = "https://scubetech.xyz/projects/dashboard/update-project-elements/${projectID!}/";
    print("***************$updateDetailsUrl***************");
    final url = Uri.parse(updateDetailsUrl);

    final response = await http.put(url, headers: headers, body: body);
    if (kDebugMode) {
      print("####### Update Repo############### After Api Call #############################");
    }

    return response.body;
  }

}