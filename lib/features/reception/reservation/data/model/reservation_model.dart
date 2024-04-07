class ReservationModel {
  bool? success;
  String? message;
  int? status;
  List<String>? resource;
  int? resourceCount;

  ReservationModel({
    this.success,
    this.message,
    this.status,
    this.resource,
    this.resourceCount,
  });

    static ReservationModel fromJson(Map<String, dynamic> json) {
      List<String> _resource = [];
    if(json['resource'] != null){
      json['resource'].forEach((item){
        _resource.add(item);
      });
    }
    return 
    ReservationModel(
      success: json["success"],
      message: json["message"],
      status: json["status"],
      resource: _resource,
      resourceCount: json["resourceCount"],
    );
  }
}
