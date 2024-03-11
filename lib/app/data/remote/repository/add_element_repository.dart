import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../model/project_details_model.dart';


String addElementUrl = "https://scubetech.xyz/projects/dashboard/add-project-elements/";


class AddElement{

  Future<String> addElement(
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
          "start_date": startTime,
          "end_date": endTime,
          "project_name": projectName,
          "project_update": projectUpdate,
          "assigned_engineer": assignedEngineer,
          "assigned_technician": assignedTechnician
        }

    );
    final url = Uri.parse(addElementUrl);
    final response = await http.post(url, headers: headers, body: body);
    if (kDebugMode) {
      print("###################### After Api Call #############################");
    }

    return response.body;
  }

}