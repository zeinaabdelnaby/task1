import 'package:dartz/dartz.dart';
import 'package:flutter_grad_project/core/api/api_services.dart';
import 'package:flutter_grad_project/core/error/exceptions.dart';
import 'package:flutter_grad_project/core/failures/failures.dart';
import 'package:flutter_grad_project/core/failures/server_failures.dart';
import 'package:flutter_grad_project/features/reception/reservation/data/model/reservation_model.dart';
import 'package:intl/intl.dart';

class ReservationRepository {
  final ApiServices apiServices;

  ReservationRepository(this.apiServices);

  Future<Either<Failures, ReservationModel>> addData(
      {String? hospitalId,
      String? departmentId,
      String? date,
      String? patientId}) async {
    try {
      final formattedDate =
          DateFormat('2022-08-29T10:33:49.283Z').format(DateTime.parse(date!));

      var response = await apiServices
          .post("/api/PatientMobile/Appointment/GetAllAvailableShift", body: {
        "hospitalId": hospitalId,
        "departmentId": departmentId,
        "date": formattedDate,
        "patientId": patientId
      });
      ReservationModel reservationModel = ReservationModel.fromJson(response);

      return Right(reservationModel);
    } on ServerException catch (e) {
      return Left(ServerFailures(e.errModel.message));
    } catch (e) {
      return Left(ServerFailures('something went wrong'));
    }
  }

  Future<Either<Failures, ReservationModel>> bookApp(
      {String? hospitalId,
      String? departmentId,
      String? date,
      String? patientId}) async {
    try {
      final formattedDate =
          DateFormat('2022-08-29T10:33:49.283Z').format(DateTime.parse(date!));

      var response = await apiServices
          .post("/api/PatientMobile/Appointment/PostAppointment", body: {
        "patientId": patientId,
        "date": formattedDate,
        "hospitalId": hospitalId,
        "departmentId": departmentId,
        "status": 0
      }
              //      {
              //   "hospitalId": hospitalId,
              //   "departmentId": departmentId,
              //   "date": formattedDate,
              //   "patientId": patientId
              // }
              // isFromData: true,
              );
      ReservationModel bookModel = ReservationModel.fromJson(response);
      return Right(bookModel);
    } on ServerException catch (e) {
      return Left(ServerFailures(e.errModel.message));
    } catch (e) {
      return Left(ServerFailures('something went wrong'));
    }
  }
}