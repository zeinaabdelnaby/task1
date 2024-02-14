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
    List<dynamic>? resource;
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
        resource: json["resource"] == null ? [] : List<dynamic>.from(json["resource"]!.map((x) => x)),
        resourceCount: json["resourceCount"],
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "status": status,
        "resource": resource == null ? [] : List<dynamic>.from(resource!.map((x) => x)),
        "resourceCount": resourceCount,
    };
}
