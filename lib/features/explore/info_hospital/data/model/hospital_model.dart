// To parse this JSON data, do
//
//     final hospitalModel = hospitalModelFromJson(jsonString);

import 'dart:convert';

HospitalModel hospitalModelFromJson(String str) => HospitalModel.fromJson(json.decode(str));

String hospitalModelToJson(HospitalModel data) => json.encode(data.toJson());

class HospitalModel {
    bool? success;
    String? message;
    int? status;
    List<Resource>? resource;
    int? resourceCount;

    HospitalModel({
        this.success,
        this.message,
        this.status,
        this.resource,
        this.resourceCount,
    });

    factory HospitalModel.fromJson(Map<String, dynamic> json) => HospitalModel(
        success: json["success"],
        message: json["message"],
        status: json["status"],
        resource: json["resource"] == null ? [] : List<Resource>.from(json["resource"]!.map((x) => Resource.fromJson(x))),
        resourceCount: json["resourceCount"],
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "status": status,
        "resource": resource == null ? [] : List<dynamic>.from(resource!.map((x) => x.toJson())),
        "resourceCount": resourceCount,
    };
}

class Resource {
    String? id;
    String? name;
    String? description;
    String? categoryId;
    dynamic categoryName;
    String? addressId;
    dynamic addressTitle;
    String? imagePath;

    Resource({
        this.id,
        this.name,
        this.description,
        this.categoryId,
        this.categoryName,
        this.addressId,
        this.addressTitle,
        this.imagePath,
    });

    factory Resource.fromJson(Map<String, dynamic> json) => Resource(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        categoryId: json["categoryId"],
        categoryName: json["categoryName"],
        addressId: json["addressId"],
        addressTitle: json["addressTitle"],
        imagePath: json["imagePath"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "categoryId": categoryId,
        "categoryName": categoryName,
        "addressId": addressId,
        "addressTitle": addressTitle,
        "imagePath": imagePath,
    };
}
