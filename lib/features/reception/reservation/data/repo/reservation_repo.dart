import 'package:flutter_grad_project/core/api/api_services.dart';
import 'package:flutter_grad_project/core/error/exceptions.dart';

class ReservationRepository {
  final ApiServices apiServices;

  ReservationRepository(this.apiServices);

  Future<dynamic> addData({int? day, int? id, int? time}) async {
    try {
      Map<String, dynamic> response = await apiServices.post(
          "/api/PatientMobile/Patient/GetById?Id=3a0a1bd9-aecf-4bf5-4cba-08dc27e1e159",
          body: {"id": id, "day": day, "time": time}
          // isFromData: true,
          );
      print(response.toString());

      return response;
    } on ServerException catch (e) {
      return (e.errModel.message);
    } catch (e) {
      return ('something went wrong');
    }
  }
}
