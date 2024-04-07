import 'package:flutter_grad_project/core/api/api_services.dart';

class HospitalsRepository {
  final ApiServices apiServices;
  

  HospitalsRepository(this.apiServices);

  Future<dynamic> getHospitalsData(String depId) async {
    Map<String, dynamic> response =
        await apiServices.get("/api/PatientMobile/Hospital/GetAll?DepartmentId=$depId");
    print("eeeeeeeeeeeeeeeeee");
    print(response.toString());

    return response;
  }
}
