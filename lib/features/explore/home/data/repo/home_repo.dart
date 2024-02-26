import 'package:flutter_grad_project/core/api/api_services.dart';

class HomeRepository {
  final ApiServices apiServices;

  HomeRepository(this.apiServices);

  Future<dynamic> getHomeData() async {
    Map<String, dynamic> response =
        await apiServices.get("/api/PatientMobile/Department/GetAll");
    print(response.toString());

    return response;
  }

}
