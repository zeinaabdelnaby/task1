import 'package:flutter_grad_project/core/api/api_services.dart';
import 'package:flutter_grad_project/core/error/exceptions.dart';
import 'package:intl/intl.dart';

class ReservationRepository {
  final ApiServices apiServices;

  ReservationRepository(this.apiServices);

  Future<dynamic> addData(
      {String? hospitalId,
      String? departmentId,
      String? date,
      String? patientId}) async {
    try {
      
      final formattedDate =
          DateFormat('2022-08-29T10:33:49.283Z').format(DateTime.parse(date!));

      Map<String, dynamic> response = await apiServices
          .post("/api/PatientMobile/Appointment/GetAllAvailableShift", body: {
        "hospitalId": hospitalId,
        "departmentId": departmentId,
        "date": formattedDate,
        "patientId": patientId
      }
              // isFromData: true,
              );
      print("service : ${response.toString()}");

      return response;
    } on ServerException catch (e) {
      return (e.errModel.message);
    } catch (e) {
      return ('something went wrong');
    }
  }
  Future<dynamic> bookApp(
      {String? hospitalId,
      String? departmentId,
      String? date,
      String? patientId}) async {
    try {
      
      final formattedDate =
          DateFormat('2022-08-29T10:33:49.283Z').format(DateTime.parse(date!));

      Map<String, dynamic> response = await apiServices
          .post("/api/PatientMobile/Appointment/PostAppointment", body: {
        "hospitalId": hospitalId,
        "departmentId": departmentId,
        "date": formattedDate,
        "patientId": patientId
      }
              // isFromData: true,
              );
      print("service : ${response.toString()}");

      return response;
    } on ServerException catch (e) {
      return (e.errModel.message);
    } catch (e) {
      return ('something went wrong');
    }
  }
}
