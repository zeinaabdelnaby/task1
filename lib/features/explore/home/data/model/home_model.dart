// To parse this JSON data, do
//
//     final homeModel = homeModelFromJson(jsonString);

import 'dart:convert';

HomeModel homeModelFromJson(String str) => HomeModel.fromJson(json.decode(str));

String homeModelToJson(HomeModel data) => json.encode(data.toJson());

class HomeModel {
  bool? success;
  String? message;
  int? status;
  List<HomeItemModel>? resource;
  int? resourceCount;

  HomeModel({
    this.success,
    this.message,
    this.status,
    this.resource,
    this.resourceCount,
  });

  factory HomeModel.fromJson(Map<String, dynamic> json) => HomeModel(
        success: json["success"],
        message: json["message"],
        status: json["status"],
        resource: json["resource"] == null
            ? []
            : List<HomeItemModel>.from(
                json["resource"]!.map((x) => HomeItemModel.fromJson(x))),
        resourceCount: json["resourceCount"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "status": status,
        "resource": resource == null
            ? []
            : List<dynamic>.from(resource!.map((x) => x.toJson())),
        "resourceCount": resourceCount,
      };
}

class HomeItemModel {
  String? id;
  String? name;
  int? specialFlag;
  String? description;
  String? imagePath;

  HomeItemModel({
    this.id,
    this.name,
    this.specialFlag,
    this.description,
    this.imagePath,
  });

  factory HomeItemModel.fromJson(Map<String, dynamic> json) => HomeItemModel(
        id: json["id"],
        name: json["name"],
        specialFlag: json["specialFlag"],
        description: json["description"],
        imagePath: json["imagePath"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "specialFlag": specialFlag,
        "description": description,
        "imagePath": imagePath,
      };
}
