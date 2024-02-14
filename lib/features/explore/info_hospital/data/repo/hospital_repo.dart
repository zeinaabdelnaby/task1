import 'package:flutter_grad_project/core/api/api_services.dart';

class HospitalRepository {
  final ApiServices apiServices;

  HospitalRepository(this.apiServices);

  Future<dynamic> getHospitalData() async {
    Map<String, dynamic> response =
        await apiServices.get("/api/PatientMobile/Hospital/GetAll?CategoryId&DepartmentId=");
    print("eeeeeeeeeeeeeeeeee");
    print(response.toString());

    return response;
  }
}