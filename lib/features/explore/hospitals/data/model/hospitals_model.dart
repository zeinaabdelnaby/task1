// To parse this JSON data, do
//
//     final hospitalsModel = hospitalsModelFromJson(jsonString);

import 'dart:convert';

HospitalsModel hospitalsModelFromJson(String str) => HospitalsModel.fromJson(json.decode(str));

String hospitalsModelToJson(HospitalsModel data) => json.encode(data.toJson());

class HospitalsModel {
    bool? success;
    String? message;
    int? status;
    List<Resource>? resource;
    int? resourceCount;

    HospitalsModel({
        this.success,
        this.message,
        this.status,
        this.resource,
        this.resourceCount,
    });

    factory HospitalsModel.fromJson(Map<String, dynamic> json) => HospitalsModel(
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
    int? hospitalCount;

    Resource({
        this.id,
        this.name,
        this.hospitalCount,
    });

    factory Resource.fromJson(Map<String, dynamic> json) => Resource(
        id: json["id"],
        name: json["name"],
        hospitalCount: json["hospitalCount"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "hospitalCount": hospitalCount,
    };
}
