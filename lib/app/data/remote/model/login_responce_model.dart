// To parse this JSON data, do
//
//     final loginResponseModel = loginResponseModelFromJson(jsonString);

import 'dart:convert';

LoginResponseModel loginResponseModelFromJson(String str) => LoginResponseModel.fromJson(json.decode(str));

String loginResponseModelToJson(LoginResponseModel data) => json.encode(data.toJson());

class LoginResponseModel {
  User? user;
  String? token;

  LoginResponseModel({
    this.user,
    this.token,
  });

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) => LoginResponseModel(
    user: json["user"] == null ? null : User.fromJson(json["user"]),
    token: json["token"],
  );

  Map<String, dynamic> toJson() => {
    "user": user?.toJson(),
    "token": token,
  };
}

class User {
  bool? isSeller;
  bool? active;
  bool? needToRefreshToken;
  int? balance;
  List<dynamic>? fcmTokens;
  int? riderCommissionPerParcel;
  int? smsBalance;
  String? id;
  String? fullName;
  String? password;
  String? phone;
  String? email;
  Role? role;
  String? sellerInfo;
  String? createdAt;
  String? updatedAt;
  int? v;
  Address? address;
  int? otpCode;
  String? gender;
  int? invoicePerPage;
  String? parcelInvoiceSize;

  User({
    this.isSeller,
    this.active,
    this.needToRefreshToken,
    this.balance,
    this.fcmTokens,
    this.riderCommissionPerParcel,
    this.smsBalance,
    this.id,
    this.fullName,
    this.password,
    this.phone,
    this.email,
    this.role,
    this.sellerInfo,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.address,
    this.otpCode,
    this.gender,
    this.invoicePerPage,
    this.parcelInvoiceSize,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
    isSeller: json["isSeller"],
    active: json["active"],
    needToRefreshToken: json["needToRefreshToken"],
    balance: json["balance"],
    fcmTokens: json["fcmTokens"] == null ? [] : List<dynamic>.from(json["fcmTokens"]!.map((x) => x)),
    riderCommissionPerParcel: json["riderCommissionPerParcel"],
    smsBalance: json["smsBalance"],
    id: json["_id"],
    fullName: json["fullName"],
    password: json["password"],
    phone: json["phone"],
    email: json["email"],
    role: json["role"] == null ? null : Role.fromJson(json["role"]),
    sellerInfo: json["sellerInfo"],
    createdAt: json["createdAt"],
    updatedAt: json["updatedAt"],
    v: json["__v"],
    address: json["address"] == null ? null : Address.fromJson(json["address"]),
    otpCode: json["OTPCode"],
    gender: json["gender"],
    invoicePerPage: json["invoicePerPage"],
    parcelInvoiceSize: json["parcelInvoiceSize"],
  );

  Map<String, dynamic> toJson() => {
    "isSeller": isSeller,
    "active": active,
    "needToRefreshToken": needToRefreshToken,
    "balance": balance,
    "fcmTokens": fcmTokens == null ? [] : List<dynamic>.from(fcmTokens!.map((x) => x)),
    "riderCommissionPerParcel": riderCommissionPerParcel,
    "smsBalance": smsBalance,
    "_id": id,
    "fullName": fullName,
    "password": password,
    "phone": phone,
    "email": email,
    "role": role?.toJson(),
    "sellerInfo": sellerInfo,
    "createdAt": createdAt,
    "updatedAt": updatedAt,
    "__v": v,
    "address": address?.toJson(),
    "OTPCode": otpCode,
    "gender": gender,
    "invoicePerPage": invoicePerPage,
    "parcelInvoiceSize": parcelInvoiceSize,
  };
}

class Address {
  String? id;
  String? streetAddress;

  Address({
    this.id,
    this.streetAddress,
  });

  factory Address.fromJson(Map<String, dynamic> json) => Address(
    id: json["_id"],
    streetAddress: json["streetAddress"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "streetAddress": streetAddress,
  };
}

class Role {
  String? id;
  String? alias;
  String? permissionString;
  int? v;

  Role({
    this.id,
    this.alias,
    this.permissionString,
    this.v,
  });

  factory Role.fromJson(Map<String, dynamic> json) => Role(
    id: json["_id"],
    alias: json["alias"],
    permissionString: json["permissionString"],
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "alias": alias,
    "permissionString": permissionString,
    "__v": v,
  };
}
