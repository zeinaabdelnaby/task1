class ReservationModel {
    bool? success;
    String? message;
    int? status;
    dynamic resource;
    int? resourceCount;

    ReservationModel({
        this.success,
        this.message,
        this.status,
        this.resource,
        this.resourceCount,
    });

}