// To parse this JSON data, do
//
//     final addElementResponseModel = addElementResponseModelFromJson(jsonString);

import 'dart:convert';

AddElementResponseModel addElementResponseModelFromJson(String str) => AddElementResponseModel.fromJson(json.decode(str));

String addElementResponseModelToJson(AddElementResponseModel data) => json.encode(data.toJson());

class AddElementResponseModel {
  String? message;

  AddElementResponseModel({
    this.message,
  });

  factory AddElementResponseModel.fromJson(Map<String, dynamic> json) => AddElementResponseModel(
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "message": message,
  };
}
