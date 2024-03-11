// To parse this JSON data, do
//
//     final showAllParcelModel = showAllParcelModelFromJson(jsonString);


import 'dart:convert';

ShowAllParcelModel showAllParcelModelFromJson(String str) => ShowAllParcelModel.fromJson(json.decode(str));

String showAllParcelModelToJson(ShowAllParcelModel data) => json.encode(data.toJson());

class ShowAllParcelModel {
  List<Content>? content;
  int? totalElements;
  int? page;
  int? size;
  Summary? summary;

  ShowAllParcelModel({
    this.content,
    this.totalElements,
    this.page,
    this.size,
    this.summary,
  });

  factory ShowAllParcelModel.fromJson(Map<String, dynamic> json) => ShowAllParcelModel(
    content: json["content"] == null ? [] : List<Content>.from(json["content"]!.map((x) => Content.fromJson(x))),
    totalElements: json["totalElements"],
    page: json["page"],
    size: json["size"],
    summary: json["summary"] == null ? null : Summary.fromJson(json["summary"]),
  );

  Map<String, dynamic> toJson() => {
    "content": content == null ? [] : List<dynamic>.from(content!.map((x) => x.toJson())),
    "totalElements": totalElements,
    "page": page,
    "size": size,
    "summary": summary?.toJson(),
  };
}

class Content {
  String? status;
  List<dynamic>? parcelGroupRecords;
  List<dynamic>? statusRecordList;
  int? deliveryCharge;
  int? returnCharge;
  double? merchantAmount;
  double? totalCharge;
  double? codCharge;
  int? collectedAmount;
  int? fine;
  bool? payable;
  String? paymentStatus;
  bool? editable;
  int? stockPrice;
  bool? partialDelivered;
  int? previousPrice;
  bool? receivedInHubManually;
  bool? assignDeliverymanManually;
  int? weightCharge;
  String? id;
  String? merchantOrderId;
  String? recipientName;
  String? recipientPhone;
  String? recipientCity;
  String? recipientArea;
  String? recipientZone;
  String? recipientAddress;
  int? amountToCollect;
  String? itemDescription;
  int? itemQuantity;
  int? itemWeight;
  String? specialInstruction;
  String? shopId;
  Seller? seller;
  String? cityType;
  String? createdBy;
  String? createdAt;
  String? updatedAt;
  String? invoice;
  int? v;

  Content({
    this.status,
    this.parcelGroupRecords,
    this.statusRecordList,
    this.deliveryCharge,
    this.returnCharge,
    this.merchantAmount,
    this.totalCharge,
    this.codCharge,
    this.collectedAmount,
    this.fine,
    this.payable,
    this.paymentStatus,
    this.editable,
    this.stockPrice,
    this.partialDelivered,
    this.previousPrice,
    this.receivedInHubManually,
    this.assignDeliverymanManually,
    this.weightCharge,
    this.id,
    this.merchantOrderId,
    this.recipientName,
    this.recipientPhone,
    this.recipientCity,
    this.recipientArea,
    this.recipientZone,
    this.recipientAddress,
    this.amountToCollect,
    this.itemDescription,
    this.itemQuantity,
    this.itemWeight,
    this.specialInstruction,
    this.shopId,
    this.seller,
    this.cityType,
    this.createdBy,
    this.createdAt,
    this.updatedAt,
    this.invoice,
    this.v,
  });

  factory Content.fromJson(Map<String, dynamic> json) => Content(
    status: json["status"],
    parcelGroupRecords: json["parcelGroupRecords"] == null ? [] : List<dynamic>.from(json["parcelGroupRecords"]!.map((x) => x)),
    statusRecordList: json["statusRecordList"] == null ? [] : List<dynamic>.from(json["statusRecordList"]!.map((x) => x)),
    deliveryCharge: json["deliveryCharge"],
    returnCharge: json["returnCharge"],
    merchantAmount: json["merchantAmount"]?.toDouble(),
    totalCharge: json["totalCharge"]?.toDouble(),
    codCharge: json["CODCharge"]?.toDouble(),
    collectedAmount: json["collectedAmount"],
    fine: json["fine"],
    payable: json["payable"],
    paymentStatus: json["paymentStatus"],
    editable: json["editable"],
    stockPrice: json["stockPrice"],
    partialDelivered: json["partialDelivered"],
    previousPrice: json["previousPrice"],
    receivedInHubManually: json["receivedInHubManually"],
    assignDeliverymanManually: json["assignDeliverymanManually"],
    weightCharge: json["weightCharge"],
    id: json["_id"],
    merchantOrderId: json["merchantOrderId"],
    recipientName: json["recipientName"],
    recipientPhone: json["recipientPhone"],
    recipientCity: json["recipientCity"],
    recipientArea: json["recipientArea"],
    recipientZone: json["recipientZone"],
    recipientAddress: json["recipientAddress"],
    amountToCollect: json["amountToCollect"],
    itemDescription: json["itemDescription"],
    itemQuantity: json["itemQuantity"],
    itemWeight: json["itemWeight"],
    specialInstruction: json["specialInstruction"],
    shopId: json["shopId"],
    seller: json["seller"] == null ? null : Seller.fromJson(json["seller"]),
    cityType: json["cityType"],
    createdBy: json["createdBy"],
    createdAt: json["createdAt"],
    updatedAt: json["updatedAt"],
    invoice: json["invoice"],
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "parcelGroupRecords": parcelGroupRecords == null ? [] : List<dynamic>.from(parcelGroupRecords!.map((x) => x)),
    "statusRecordList": statusRecordList == null ? [] : List<dynamic>.from(statusRecordList!.map((x) => x)),
    "deliveryCharge": deliveryCharge,
    "returnCharge": returnCharge,
    "merchantAmount": merchantAmount,
    "totalCharge": totalCharge,
    "CODCharge": codCharge,
    "collectedAmount": collectedAmount,
    "fine": fine,
    "payable": payable,
    "paymentStatus": paymentStatus,
    "editable": editable,
    "stockPrice": stockPrice,
    "partialDelivered": partialDelivered,
    "previousPrice": previousPrice,
    "receivedInHubManually": receivedInHubManually,
    "assignDeliverymanManually": assignDeliverymanManually,
    "weightCharge": weightCharge,
    "_id": id,
    "merchantOrderId": merchantOrderId,
    "recipientName": recipientName,
    "recipientPhone": recipientPhone,
    "recipientCity": recipientCity,
    "recipientArea": recipientArea,
    "recipientZone": recipientZone,
    "recipientAddress": recipientAddress,
    "amountToCollect": amountToCollect,
    "itemDescription": itemDescription,
    "itemQuantity": itemQuantity,
    "itemWeight": itemWeight,
    "specialInstruction": specialInstruction,
    "shopId": shopId,
    "seller": seller?.toJson(),
    "cityType": cityType,
    "createdBy": createdBy,
    "createdAt": createdAt,
    "updatedAt": updatedAt,
    "invoice": invoice,
    "__v": v,
  };
}

class Seller {
  List<dynamic>? productCategories;
  bool? emailVerified;
  bool? verified;
  bool? requestForVerification;
  bool? showShopInHomepage;
  bool? active;
  String? id;
  String? companyName;
  String? phoneNumber1;
  String? ownerName;
  String? email;
  SubscriptionPlan? subscriptionPlan;
  List<dynamic>? warehouseAddressList;
  String? createdAt;
  String? updatedAt;
  int? v;
  String? bankAccountHolderName;
  String? bankAccountNumber;
  String? bankBranchName;
  String? bankName;
  String? bankRoutingNumber;
  String? bkash;
  String? nagad;
  dynamic reasonOfRejection;
  String? rocket;
  String? streetAddress;

  Seller({
    this.productCategories,
    this.emailVerified,
    this.verified,
    this.requestForVerification,
    this.showShopInHomepage,
    this.active,
    this.id,
    this.companyName,
    this.phoneNumber1,
    this.ownerName,
    this.email,
    this.subscriptionPlan,
    this.warehouseAddressList,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.bankAccountHolderName,
    this.bankAccountNumber,
    this.bankBranchName,
    this.bankName,
    this.bankRoutingNumber,
    this.bkash,
    this.nagad,
    this.reasonOfRejection,
    this.rocket,
    this.streetAddress,
  });

  factory Seller.fromJson(Map<String, dynamic> json) => Seller(
    productCategories: json["productCategories"] == null ? [] : List<dynamic>.from(json["productCategories"]!.map((x) => x)),
    emailVerified: json["emailVerified"],
    verified: json["verified"],
    requestForVerification: json["requestForVerification"],
    showShopInHomepage: json["showShopInHomepage"],
    active: json["active"],
    id: json["_id"],
    companyName: json["companyName"],
    phoneNumber1: json["phoneNumber1"],
    ownerName: json["ownerName"],
    email: json["email"],
    subscriptionPlan: json["subscriptionPlan"] == null ? null : SubscriptionPlan.fromJson(json["subscriptionPlan"]),
    warehouseAddressList: json["warehouseAddressList"] == null ? [] : List<dynamic>.from(json["warehouseAddressList"]!.map((x) => x)),
    createdAt: json["createdAt"],
    updatedAt: json["updatedAt"],
    v: json["__v"],
    bankAccountHolderName: json["bankAccountHolderName"],
    bankAccountNumber: json["bankAccountNumber"],
    bankBranchName: json["bankBranchName"],
    bankName: json["bankName"],
    bankRoutingNumber: json["bankRoutingNumber"],
    bkash: json["bkash"],
    nagad: json["nagad"],
    reasonOfRejection: json["reasonOfRejection"],
    rocket: json["rocket"],
    streetAddress: json["streetAddress"],
  );

  Map<String, dynamic> toJson() => {
    "productCategories": productCategories == null ? [] : List<dynamic>.from(productCategories!.map((x) => x)),
    "emailVerified": emailVerified,
    "verified": verified,
    "requestForVerification": requestForVerification,
    "showShopInHomepage": showShopInHomepage,
    "active": active,
    "_id": id,
    "companyName": companyName,
    "phoneNumber1": phoneNumber1,
    "ownerName": ownerName,
    "email": email,
    "subscriptionPlan": subscriptionPlan?.toJson(),
    "warehouseAddressList": warehouseAddressList == null ? [] : List<dynamic>.from(warehouseAddressList!.map((x) => x)),
    "createdAt": createdAt,
    "updatedAt": updatedAt,
    "__v": v,
    "bankAccountHolderName": bankAccountHolderName,
    "bankAccountNumber": bankAccountNumber,
    "bankBranchName": bankBranchName,
    "bankName": bankName,
    "bankRoutingNumber": bankRoutingNumber,
    "bkash": bkash,
    "nagad": nagad,
    "reasonOfRejection": reasonOfRejection,
    "rocket": rocket,
    "streetAddress": streetAddress,
  };
}

class SubscriptionPlan {
  bool? subscriptionPlanDefault;
  String? id;
  int? insideCityMinPrice;
  int? subCityMinPrice;
  int? outsideCityMinPrice;
  int? minWeightThreshold;
  int? minWeightThresholdInsideCity;
  int? minWeightThresholdSubCity;
  int? minWeightThresholdOutsideCity;
  int? insideCityMaxPrice;
  int? subCityMaxPrice;
  int? outsideCityMaxPrice;
  int? maxWeightThreshold;
  int? maxWeightThresholdInsideCity;
  int? maxWeightThresholdSubCity;
  int? maxWeightThresholdOutsideCity;
  int? extraWeightUnit;
  int? extraWeightUnitInsideCity;
  int? extraWeightUnitSubCity;
  int? extraWeightUnitOutsideCity;
  int? pricePerExtraWeightUnitInsideCity;
  int? pricePerExtraWeightUnitSubCity;
  int? pricePerExtraWeightUnitOutsideCity;
  int? codChargePercentage;
  int? codChargePercentageInsideCity;
  int? codChargePercentageSubCity;
  int? codChargePercentageOutsideCity;
  int? minReturnChargeInsideCity;
  int? minReturnChargeSubCity;
  int? minReturnChargeOutsideCity;

  SubscriptionPlan({
    this.subscriptionPlanDefault,
    this.id,
    this.insideCityMinPrice,
    this.subCityMinPrice,
    this.outsideCityMinPrice,
    this.minWeightThreshold,
    this.minWeightThresholdInsideCity,
    this.minWeightThresholdSubCity,
    this.minWeightThresholdOutsideCity,
    this.insideCityMaxPrice,
    this.subCityMaxPrice,
    this.outsideCityMaxPrice,
    this.maxWeightThreshold,
    this.maxWeightThresholdInsideCity,
    this.maxWeightThresholdSubCity,
    this.maxWeightThresholdOutsideCity,
    this.extraWeightUnit,
    this.extraWeightUnitInsideCity,
    this.extraWeightUnitSubCity,
    this.extraWeightUnitOutsideCity,
    this.pricePerExtraWeightUnitInsideCity,
    this.pricePerExtraWeightUnitSubCity,
    this.pricePerExtraWeightUnitOutsideCity,
    this.codChargePercentage,
    this.codChargePercentageInsideCity,
    this.codChargePercentageSubCity,
    this.codChargePercentageOutsideCity,
    this.minReturnChargeInsideCity,
    this.minReturnChargeSubCity,
    this.minReturnChargeOutsideCity,
  });

  factory SubscriptionPlan.fromJson(Map<String, dynamic> json) => SubscriptionPlan(
    subscriptionPlanDefault: json["default"],
    id: json["_id"],
    insideCityMinPrice: json["insideCityMinPrice"],
    subCityMinPrice: json["subCityMinPrice"],
    outsideCityMinPrice: json["outsideCityMinPrice"],
    minWeightThreshold: json["minWeightThreshold"],
    minWeightThresholdInsideCity: json["minWeightThresholdInsideCity"],
    minWeightThresholdSubCity: json["minWeightThresholdSubCity"],
    minWeightThresholdOutsideCity: json["minWeightThresholdOutsideCity"],
    insideCityMaxPrice: json["insideCityMaxPrice"],
    subCityMaxPrice: json["subCityMaxPrice"],
    outsideCityMaxPrice: json["outsideCityMaxPrice"],
    maxWeightThreshold: json["maxWeightThreshold"],
    maxWeightThresholdInsideCity: json["maxWeightThresholdInsideCity"],
    maxWeightThresholdSubCity: json["maxWeightThresholdSubCity"],
    maxWeightThresholdOutsideCity: json["maxWeightThresholdOutsideCity"],
    extraWeightUnit: json["extraWeightUnit"],
    extraWeightUnitInsideCity: json["extraWeightUnitInsideCity"],
    extraWeightUnitSubCity: json["extraWeightUnitSubCity"],
    extraWeightUnitOutsideCity: json["extraWeightUnitOutsideCity"],
    pricePerExtraWeightUnitInsideCity: json["pricePerExtraWeightUnitInsideCity"],
    pricePerExtraWeightUnitSubCity: json["pricePerExtraWeightUnitSubCity"],
    pricePerExtraWeightUnitOutsideCity: json["pricePerExtraWeightUnitOutsideCity"],
    codChargePercentage: json["CODChargePercentage"],
    codChargePercentageInsideCity: json["CODChargePercentageInsideCity"],
    codChargePercentageSubCity: json["CODChargePercentageSubCity"],
    codChargePercentageOutsideCity: json["CODChargePercentageOutsideCity"],
    minReturnChargeInsideCity: json["minReturnChargeInsideCity"],
    minReturnChargeSubCity: json["minReturnChargeSubCity"],
    minReturnChargeOutsideCity: json["minReturnChargeOutsideCity"],
  );

  Map<String, dynamic> toJson() => {
    "default": subscriptionPlanDefault,
    "_id": id,
    "insideCityMinPrice": insideCityMinPrice,
    "subCityMinPrice": subCityMinPrice,
    "outsideCityMinPrice": outsideCityMinPrice,
    "minWeightThreshold": minWeightThreshold,
    "minWeightThresholdInsideCity": minWeightThresholdInsideCity,
    "minWeightThresholdSubCity": minWeightThresholdSubCity,
    "minWeightThresholdOutsideCity": minWeightThresholdOutsideCity,
    "insideCityMaxPrice": insideCityMaxPrice,
    "subCityMaxPrice": subCityMaxPrice,
    "outsideCityMaxPrice": outsideCityMaxPrice,
    "maxWeightThreshold": maxWeightThreshold,
    "maxWeightThresholdInsideCity": maxWeightThresholdInsideCity,
    "maxWeightThresholdSubCity": maxWeightThresholdSubCity,
    "maxWeightThresholdOutsideCity": maxWeightThresholdOutsideCity,
    "extraWeightUnit": extraWeightUnit,
    "extraWeightUnitInsideCity": extraWeightUnitInsideCity,
    "extraWeightUnitSubCity": extraWeightUnitSubCity,
    "extraWeightUnitOutsideCity": extraWeightUnitOutsideCity,
    "pricePerExtraWeightUnitInsideCity": pricePerExtraWeightUnitInsideCity,
    "pricePerExtraWeightUnitSubCity": pricePerExtraWeightUnitSubCity,
    "pricePerExtraWeightUnitOutsideCity": pricePerExtraWeightUnitOutsideCity,
    "CODChargePercentage": codChargePercentage,
    "CODChargePercentageInsideCity": codChargePercentageInsideCity,
    "CODChargePercentageSubCity": codChargePercentageSubCity,
    "CODChargePercentageOutsideCity": codChargePercentageOutsideCity,
    "minReturnChargeInsideCity": minReturnChargeInsideCity,
    "minReturnChargeSubCity": minReturnChargeSubCity,
    "minReturnChargeOutsideCity": minReturnChargeOutsideCity,
  };
}

class Summary {
  double? totalCharge;
  double? merchantAmount;
  int? amountToCollect;
  int? collectedAmount;
  int? deliveryCharge;
  double? codCharge;
  int? returnCharge;
  int? fine;
  int? stockPrice;
  int? previousPrice;

  Summary({
    this.totalCharge,
    this.merchantAmount,
    this.amountToCollect,
    this.collectedAmount,
    this.deliveryCharge,
    this.codCharge,
    this.returnCharge,
    this.fine,
    this.stockPrice,
    this.previousPrice,
  });

  factory Summary.fromJson(Map<String, dynamic> json) => Summary(
    totalCharge: json["totalCharge"]?.toDouble(),
    merchantAmount: json["merchantAmount"]?.toDouble(),
    amountToCollect: json["amountToCollect"],
    collectedAmount: json["collectedAmount"],
    deliveryCharge: json["deliveryCharge"],
    codCharge: json["CODCharge"]?.toDouble(),
    returnCharge: json["returnCharge"],
    fine: json["fine"],
    stockPrice: json["stockPrice"],
    previousPrice: json["previousPrice"],
  );

  Map<String, dynamic> toJson() => {
    "totalCharge": totalCharge,
    "merchantAmount": merchantAmount,
    "amountToCollect": amountToCollect,
    "collectedAmount": collectedAmount,
    "deliveryCharge": deliveryCharge,
    "CODCharge": codCharge,
    "returnCharge": returnCharge,
    "fine": fine,
    "stockPrice": stockPrice,
    "previousPrice": previousPrice,
  };
}
